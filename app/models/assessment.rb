class Assessment < ActiveRecord::Base
  belongs_to :client, counter_cache: true

  has_many :assessment_domains, dependent: :destroy
  has_many :domains,            through:   :assessment_domains
  has_many :case_notes,         dependent: :destroy

  has_paper_trail

  validates :client, presence: true
  validate :must_be_enable_assessment
  validate :must_be_min_assessment_period, if: :new_record?
  validate :client_must_not_over_18, if: :new_record?
  validate :restrict_update_assessment, on: :update

  before_save :set_previous_score

  accepts_nested_attributes_for :assessment_domains

  scope :most_recents, -> { order(created_at: :desc) }

  DUE_STATES = ['Due Today', 'Overdue']

  def self.latest_record
    most_recents.first
  end

  def initial?
    self == client.assessments.most_recents.last || client.assessments.count.zero?
  end

  def latest_record?
    self == client.assessments.latest_record
  end

  def populate_notes
    Domain.all.each do |domain|
      assessment_domains.build(domain: domain)
    end
  end

  def basic_info
    "#{created_at.to_date} => #{assessment_domains_score}"
  end

  def assessment_domains_score
    domains.pluck(:name, :score).map { |item| item.join(': ') }.join(', ')
  end

  def assessment_domains_in_order
    assessment_domains.order('created_at')
  end

  def client_must_not_over_18
    return false if client.nil?
    adult = client.age_over_18?
    adult ? errors.add(:base, 'Assessment cannot be created for client who is over 18.') : true
  end

  def is_created_within_two_weeks?
    Date.today - 2.weeks > self.created_at
  end

  private

  def restrict_update_assessment
    return unless User.current_user.case_worker? || User.current_user.manager?
    errors.add(:base, "Assessment cannot be updated after two weeks of creation") if is_created_within_two_weeks?
  end

  def must_be_min_assessment_period
    # period = Setting.first.try(:min_assessment) || 3
    period = 3
    errors.add(:base, "Assessment cannot be created before #{period} months") if new_record? && client.present? && !client.can_create_assessment?
  end

  def must_be_enable_assessment
    setting = Setting.first.try(:disable_assessment)
    return if setting.nil?
    errors.add(:base, 'Assessment tool must be enable in setting') if setting
  end

  def set_previous_score
    if new_record? && !initial?
      previous_assessment = client.assessments.latest_record
      previous_assessment.assessment_domains.each do |previous_assessment_domain|
        assessment_domains.each do |assessment_domain|
          assessment_domain.previous_score = previous_assessment_domain.score if assessment_domain.domain_id == previous_assessment_domain.domain_id
        end
      end
    end
  end
end

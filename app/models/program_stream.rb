class ProgramStream < ActiveRecord::Base
  enum frequencies: { day: 'Daily', week: 'Weekly', month: 'Monthly', year: 'Yearly' }
  FORM_BUILDER_FIELDS = ['enrollment', 'tracking', 'exit_program'].freeze

  has_many   :domain_program_streams
  has_many   :domains, through: :domain_program_streams
  has_many   :client_program_streams
  has_many   :clients, through: :client_program_streams

  validates :name, :rules, :enrollment, :tracking, :exit_program, presence: true
  validate  :form_builder_field_uniqueness
 
  def form_builder_field_uniqueness
    errors_massage = []
    FORM_BUILDER_FIELDS.each do |field|
      labels = []
      send(field.to_sym).map{ |obj| labels << obj['label'] }
      errors_massage << (errors.add field.to_sym, "Fields duplicated!") unless (labels.uniq.length == labels.length)
    end
    errors_massage
  end
end

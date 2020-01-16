class CallsController < AdminController
  load_and_authorize_resource find_by: :id, except: :quantitative_case

  before_action :set_association, except: [:index, :destroy, :version]

  def index
    @calls = Call.order(:created_at)
  end

  def new
    @client = Client.new
    @referees = Referee.all
    @call = Call.new
  end

  def show
    @call = Call.find(params[:id])
    @referee = @call.referee
    @clients =  @call.referee.clients.map{|client| {slug: client.slug, full_name: client.en_and_local_name, gender: client.gender }}
  end
  

  def create
    call = Call.new(call_params)  
    if call.save
      render json: call
    else
      render json: call.errors, status: :unprocessable_entity
    end
  end

  def quantitative_case
    if params[:id].blank?
      render json: QuantitativeCase.all, root: :data
    else
      render json: QuantitativeCase.quantitative_cases_by_type(params[:id]), root: :data
    end
  end

  private

  def call_params
    params.require(:call).permit(:phone_call_id, :receiving_staff_id,
                            :date_of_call, :start_datetime, :end_datetime, :call_type
                            )
  end

  def remove_blank_exit_reasons
    return if params[:client][:exit_reasons].blank?
    params[:client][:exit_reasons].reject!(&:blank?)
  end

  def set_association
    @agencies        = Agency.order(:name)
    @donors          = Donor.order(:name)
    @users           = User.non_strategic_overviewers.order(:first_name, :last_name)
    @interviewees    = Interviewee.order(:created_at)
    @client_types    = ClientType.order(:created_at)
    @needs           = Need.order(:created_at)
    @problems        = Problem.order(:created_at)

    subordinate_users = User.where('manager_ids && ARRAY[:user_id] OR id = :user_id', { user_id: current_user.id }).map(&:id)
    if current_user.admin?
      @families        = Family.order(:name)
    elsif current_user.manager?
      family_ids = current_user.families.ids
      User.where(id: subordinate_users).each do |user|
        user.clients.each do |client|
          family_ids << client.family.try(:id)
        end
      end
      Client.where(id: exited_clients(subordinate_users)).each do |client|
        family_ids << client.family.try(:id)
      end
      current_user.clients.each do |client|
        family_ids << client.family.try(:id)
      end
      @families = Family.where(id: family_ids)
    elsif current_user.case_worker?
      family_ids = current_user.families.ids
      current_user.clients.each do |client|
        family_ids << client.family.try(:id)
      end
      @families = Family.where(id: family_ids)
    end

    # @carer   = @client.carer.present? ? @client.carer : Carer.new
    # @referee = @client.referee.present? ? @client.referee : Referee.new
    @carer     = Carer.new
    @referee   = Referee.new
    @relation_to_caller = Client::RELATIONSHIP_TO_CALLER.map{|relationship| {label: relationship, value: relationship.downcase}}
    @client_relationships = Carer::CLIENT_RELATIONSHIPS.map{|relationship| {label: relationship, value: relationship.downcase}}
    @address_types = Client::ADDRESS_TYPES.map{|type| {label: type, value: type.downcase}}
    @phone_owners = Client::PHONE_OWNERS.map{|owner| {label: owner, value: owner.downcase}}
    @referral_source = []
    @referral_source_category = referral_source_name(ReferralSource.parent_categories)
    country_address_fields
  end

  def referral_source_name(referral_source)
    if I18n.locale == :km
      referral_source.map{|ref| [ref.name, ref.id] }
    else
      referral_source.map do |ref|
        if ref.name_en.blank?
          [ref.name, ref.id]
        else
          [ref.name_en, ref.id]
        end
      end
    end
  end

  def country_address_fields
    selected_country = Setting.first.try(:country_name) || params[:country]
    current_org = Organization.current.short_name
    Organization.switch_to 'shared'
    @birth_provinces = []
    ['Cambodia', 'Thailand', 'Lesotho', 'Myanmar', 'Uganda'].map{ |country| @birth_provinces << [country, Province.country_is(country.downcase).map{|p| [p.name, p.id] }] }
    Organization.switch_to current_org
    @current_provinces        = Province.order(:name)
    @states                   = State.order(:name)
    # @townships                = @client.state.present? ? @client.state.townships.order(:name) : []
    # @districts                = @client.province.present? ? @client.province.districts.order(:name) : []
    # @subdistricts             = @client.district.present? ? @client.district.subdistricts.order(:name) : []
    # @communes                 = @client.district.present? ? @client.district.communes.order(:code) : []
    # @villages                 = @client.commune.present? ? @client.commune.villages.order(:code) : []

    # @referee_districts                = @client.referee.try(:province).present? ? @client.referee.province.districts.order(:name) : []
    # @referee_communes                 = @client.referee.try(:district).present? ? @client.referee.district.communes.order(:code) : []
    # @referee_villages                 = @client.referee.try(:commune).present? ? @client.referee.commune.villages.order(:code) : []

    # @carer_districts                = @client.carer.try(:province).present? ? @client.carer.province.districts.order(:name) : []
    # @carer_communes                 = @client.carer.try(:district).present? ? @client.carer.district.communes.order(:code) : []
    # @carer_villages                 = @client.carer.try(:commune).present? ? @client.carer.commune.villages.order(:code) : []
    @townships                = []
    @districts                = []
    @subdistricts             = []
    @communes                 = []
    @villages                 = []

    @referee_districts                = []
    @referee_communes                 = []
    @referee_villages                 = []

    @carer_districts                = []
    @carer_communes                 = []
    @carer_villages                 = []
  end

  def exited_clients(users)
    client_ids = []
    users.each do |user|
      PaperTrail::Version.where(item_type: 'CaseWorkerClient', event: 'create').where_object_changes(user_id: user).each do |version|
        next if version.changeset[:user_id].last != user
        client_id = version.changeset[:client_id].last
        next if !Client.find_by(id: client_id).presence.try(:exit_ngo?)
        client_ids << client_id if client_id.present?
      end
    end
    client_ids.uniq
  end
end

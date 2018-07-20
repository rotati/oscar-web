class GovernmentFormsController < AdminController
  load_and_authorize_resource
  before_action :find_client
  before_action :find_association, only: [:new, :create, :edit, :update]
  before_action :find_government_form, only: [:edit, :update, :destroy]
  # before_action :find_form_name, only: :index

  def index
    # @government_forms = @client.government_forms.filter({ name: @form_name})
    @government_forms = @client.government_forms.filter({ name: params[:form]})
  end

  def new
    @government_form = @client.government_forms.new(name: params[:name])
    @government_form.populate_needs
    @government_form.populate_problems
  end

  def create
    @government_form = @client.government_forms.new(government_form_params)
    if @government_form.save
      redirect_to client_government_forms_path(form: params[:government_form][:name]), notice: t('.successfully_created')
    else
      render :new
    end
  end

  def show
    respond_to do |format|
      format.pdf do
        @form = params[:form]
        render  pdf:      'show',
                template: 'government_forms/show.pdf.haml',
                layout:   'pdf_design.html.haml',
                show_as_html: params.key?('debug'),
                header: { html: { template: 'government_forms/pdf/header.pdf.haml' } },
                footer: { html: { template: 'government_forms/pdf/footer.pdf.haml' }, right: '[page] of [topage]' },
                margin: { left: 0, right: 0 }
      end
    end
  end

  def edit
    @government_form.populate_needs unless @government_form.needs.any?
    @government_form.populate_problems unless @government_form.problems.any?
  end

  def update
    if @government_form.update_attributes(government_form_params)
      redirect_to client_government_forms_path(@client, form: params[:government_form][:name]), notice: t('.successfully_updated')
    else
      render :edit
    end
  end

  def destroy
    @government_form.destroy
    redirect_to client_government_forms_path(@client), notice: t('.successfully_deleted')
  end

  private

  def find_client
    @client = Client.accessible_by(current_ability).friendly.find(params[:client_id])
  end

  def find_association
    @interviewees = Interviewee.order(:created_at)
    @client_types = ClientType.order(:created_at)
    @users        = @client.users.order(:first_name, :last_name)
    @provinces    = Province.official.order(:name)
    @districts    = @government_form.province.present? ? @government_form.province.districts.order(:code) : []
    @interviewee_districts   = @government_form.interview_province.present? ? @government_form.interview_province.districts.order(:code) : []
    @primary_carer_districts = @government_form.primary_carer_province.present? ? @government_form.primary_carer_province.districts.order(:code) : []
    @communes     = @government_form.district.present? ? @government_form.district.communes.order(:code) : []
    @villages     = @government_form.commune.present? ? @government_form.commune.villages.order(:code) : []
    @needs        = Need.order(:created_at)
    @problems     = Problem.order(:created_at)
  end

  def find_government_form
    @government_form = @client.government_forms.find(params[:id])
  end

  def government_form_params
    params.require(:government_form).permit(
      :name, :date, :province_id, :district_id, :commune_id, :village_id, :client_code, :interview_village,
      :interview_commune, :interview_district_id, :interview_province_id,
      :case_worker_id, :case_worker_phone, :primary_carer_relationship,
      :primary_carer_house, :primary_carer_street, :primary_carer_village,
      :primary_carer_commune, :primary_carer_district_id, :primary_carer_province_id,
      :source_info, :summary_info_of_referral, :guardian_comment, :case_worker_comment,
      :other_interviewee, :other_need, :other_problem, :other_client_type,
      interviewee_ids: [], client_type_ids: [],
      government_form_needs_attributes: [:id, :rank, :need_id],
      government_form_problems_attributes: [:id, :rank, :problem_id]
    )
  end

  def find_form_name
    @form_name = case params[:form]
            when 'one' then 'ទម្រង់ទី១: ព័ត៌មានបឋម'
            when 'two' then ''
            when 'three' then ''
            when 'four' then ''
            when 'five' then ''
            when 'sixe' then ''
            else nil
            end
    @form_name
  end
end

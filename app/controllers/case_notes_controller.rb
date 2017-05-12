class CaseNotesController < AdminController
  load_and_authorize_resource
  before_action :set_client
  before_action :set_case_note, only: [:edit, :update]


  def index
    @case_notes = @client.case_notes.most_recents.page(params[:page]).per(1)
  end

  def new
    @case_note = @client.case_notes.new
    @case_note.assessment = @client.assessments.latest_record
    @case_note.populate_notes
  end

  def create
    binding.pry
    @case_note = @client.case_notes.new(case_note_params)
    if @case_note.save
      @case_note.complete_tasks(params[:case_note][:case_note_domain_groups_attributes])
      redirect_to client_case_notes_path(@client), notice: t('.successfully_created')
    else
      render :new
    end
  end

  def show
    @case_note = @client.case_notes.find(params[:id])
  end

  def edit
  end

  def update
    authorize @case_note
    if @case_note.update(case_note_params)
      @case_note.complete_tasks(params[:case_note][:case_note_domain_groups_attributes])
      redirect_to client_case_notes_path(@client), notice: t('.successfully_updated')
    else
      render :edit
    end
  end

  private

  def case_note_params
    params.require(:case_note).permit(:meeting_date, :attendee, case_note_domain_groups_attributes: [:id, :note, :domain_group_id, :task_ids])
  end

  protected

  def set_client
    @client = Client.accessible_by(current_ability).friendly.find(params[:client_id])
  end

  def set_case_note
    @case_note = @client.case_notes.find(params[:id])
  end

end

class AssessmentsController < ApplicationController

  before_action :find_client
  before_action :find_assessment, only: [:edit, :update, :show]
  before_action :restrict_invalid_assessment, only: [:new, :create]
  before_action :restrict_update_assessment, only: [:edit, :update]

  def index
  end

  def new
    @assessment = @client.assessments.new
    @assessment.populate_notes
  end

  def create
    @assessment = @client.assessments.new(assessment_params)
    if @assessment.save
      redirect_to client_assessment_path(@client, @assessment), notice: 'Assessment has been successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @assessment.update_attributes(assessment_params)
      redirect_to client_assessment_path(@client, @assessment), notice: 'Assessment has been successfully updated.'
    else
      render :edit
    end
  end

  private

  def find_client
    if current_user.admin?
      @client = Client.find(params[:client_id])
    elsif current_user.case_worker?
      @client = current_user.clients.find(params[:client_id])
    end
  end

  def find_assessment
    @assessment = @client.assessments.find(params[:id])
  end

  def assessment_params
    params.require(:assessment).permit(assessment_domains_attributes: [:id, :domain_id, :score, :reason])
  end

  def restrict_invalid_assessment
    redirect_to client_assessments_path(@client) unless @client.can_create_assessment?
  end

  def restrict_update_assessment
    redirect_to client_assessments_path(@client) unless @assessment.latest_record?
  end

end

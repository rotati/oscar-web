class UserNotification

  attr_reader :all_count

  def initialize(user)
    @user                                            = user
    @assessments                                     = @user.assessment_either_overdue_or_due_today
    @client_custom_field                             = @user.client_custom_field_frequency_overdue_or_due_today
    @user_custom_field                               = @user.user_custom_field_frequency_overdue_or_due_today if @user.admin? || @user.manager?
    @partner_custom_field                            = @user.partner_custom_field_frequency_overdue_or_due_today
    @family_custom_field                             = @user.family_custom_field_frequency_overdue_or_due_today
    @client_enrollment_tracking_user_notification    = @user.client_enrollment_tracking_overdue_or_due_today
    @all_count                                       = count
  end

  def overdue_tasks_count
    @user.tasks.overdue_incomplete.size
  end

  def any_overdue_tasks?
    overdue_tasks_count >= 1
  end

  def due_today_tasks_count
    @user.tasks.today_incomplete.size
  end

  def any_due_today_tasks?
    due_today_tasks_count >= 1
  end

  def overdue_assessments_count
    @assessments[:overdue_count]
  end

  def any_overdue_assessments?
    overdue_assessments_count >= 1
  end

  def due_today_assessments_count
    @assessments[:due_today_count]
  end

  def any_due_today_assessments?
    due_today_assessments_count >= 1
  end

  def ec_notification(day)
    if @user.admin? || @user.ec_manager?
      Client.exit_in_week(day)
    end
  end

  def any_client_custom_field_frequency_overdue?
    client_custom_field_frequency_overdue_count >= 1
  end

  def any_client_custom_field_frequency_due_today?
    client_custom_field_frequency_due_today_count >= 1
  end

  def client_custom_field_frequency_due_today_count
    @client_custom_field[:entity_due_today].count
  end

  def client_custom_field_frequency_overdue_count
    @client_custom_field[:entity_overdue].count
  end

  def client_custom_field_frequency_due_today
    @client_custom_field[:entity_due_today]
  end

  def client_custom_field_frequency_overdue
    @client_custom_field[:entity_overdue]
  end

  def any_user_custom_field_frequency_overdue?
    user_custom_field_frequency_overdue_count >= 1
  end

  def any_user_custom_field_frequency_due_today?
    user_custom_field_frequency_due_today_count >= 1
  end

  def user_custom_field_frequency_due_today_count
    @user_custom_field[:entity_due_today].count
  end

  def user_custom_field_frequency_overdue_count
    @user_custom_field[:entity_overdue].count
  end

  def user_custom_field_frequency_due_today
    @user_custom_field[:entity_due_today]
  end

  def user_custom_field_frequency_overdue
    @user_custom_field[:entity_overdue]
  end

  def any_partner_custom_field_frequency_overdue?
    partner_custom_field_frequency_overdue_count >= 1
  end

  def any_partner_custom_field_frequency_due_today?
    partner_custom_field_frequency_due_today_count >= 1
  end

  def partner_custom_field_frequency_due_today_count
    @partner_custom_field[:entity_due_today].count
  end

  def partner_custom_field_frequency_overdue_count
    @partner_custom_field[:entity_overdue].count
  end

  def partner_custom_field_frequency_due_today
    @partner_custom_field[:entity_due_today]
  end

  def partner_custom_field_frequency_overdue
    @partner_custom_field[:entity_overdue]
  end

  def any_family_custom_field_frequency_overdue?
    family_custom_field_frequency_overdue_count >= 1
  end

  def any_family_custom_field_frequency_due_today?
    family_custom_field_frequency_due_today_count >= 1
  end

  def family_custom_field_frequency_due_today_count
    @family_custom_field[:entity_due_today].count
  end

  def family_custom_field_frequency_overdue_count
    @family_custom_field[:entity_overdue].count
  end

  def family_custom_field_frequency_due_today
    @family_custom_field[:entity_due_today]
  end

  def family_custom_field_frequency_overdue
    @family_custom_field[:entity_overdue]
  end

  def client_enrollment_tracking_frequency_due_today_count
    @client_enrollment_tracking_user_notification[:clients_due_today].count
  end

  def client_enrollment_tracking_frequency_overdue_count
    @client_enrollment_tracking_user_notification[:clients_overdue].count
  end

  def any_client_enrollment_tracking_frequency_due_today?
    client_enrollment_tracking_frequency_due_today_count >= 1
  end

  def any_client_enrollment_tracking_frequency_overdue?
    client_enrollment_tracking_frequency_overdue_count >= 1
  end

  def client_enrollment_tracking_frequency_due_today
    @client_enrollment_tracking_user_notification[:clients_due_today]
  end

  def client_enrollment_tracking_frequency_overdue
    @client_enrollment_tracking_user_notification[:clients_overdue]
  end

  def count
    count_notification = 0
    if @user.admin? || @user.ec_manager?
      (83..90).each do |item|
        count_notification += 1 if ec_notification(item).present?
      end
    end
    if @user.admin? || @user.manager?
      count_notification += 1 if any_user_custom_field_frequency_overdue?
      count_notification += 1 if any_user_custom_field_frequency_due_today?
    end
    if @user.admin? || @user.any_case_manager?
      count_notification += 1 if any_partner_custom_field_frequency_overdue?
      count_notification += 1 if any_partner_custom_field_frequency_due_today?
      count_notification += 1 if any_family_custom_field_frequency_overdue?
      count_notification += 1 if any_family_custom_field_frequency_due_today?
    end
    unless @user.strategic_overviewer?
      count_notification += 1 if any_client_custom_field_frequency_overdue?
      count_notification += 1 if any_client_custom_field_frequency_due_today?
      count_notification += 1 if any_overdue_tasks?
      count_notification += 1 if any_due_today_tasks?
      count_notification += 1 if any_overdue_assessments?
      count_notification += 1 if any_due_today_assessments?
      count_notification += 1 if any_client_enrollment_tracking_frequency_due_today?
      count_notification += 1 if any_client_enrollment_tracking_frequency_overdue?
    end
    count_notification
  end
end

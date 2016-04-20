class QuarterlyReportsGrid
  include Datagrid

  attr_accessor :current_case

  scope do
    QuarterlyReport.all.includes(:staff_information, :case)
  end

  column(:code, html: true) do |object|
    link_to object.code, client_case_quarterly_report_path(object.case.client, object.case, object)
  end

  column(:visit_date, header: -> {I18n.t('datagrid.columns.quarterly_reports.visit_date')}, html: true)

  column(:case, header: -> {I18n.t('datagrid.columns.quarterly_reports.kc_name')}, html: true) do |object|
    link_to object.case.client.name, client_path(object.case.client) if object.kinship?
  end

  column(:case, header: -> {I18n.t('datagrid.columns.quarterly_reports.fc_name')}, html: true) do |object|
    link_to object.case.client.name, client_path(object.case.client) if object.foster?

  end

  column(:general_health_or_appearance, header: -> {I18n.t('datagrid.columns.quarterly_reports.general_health_or_appearance')}, html: true) do |object|
    truncate(object.general_health_or_appearance, length: 50)
  end

  column(:staff_information, header: -> {I18n.t('datagrid.columns.quarterly_reports.staff_information')}, html: true) do |object|
    link_to object.staff_information.name, user_path(object.staff_information) if object.staff_information
  end
end

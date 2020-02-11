module CallHelper
  def call_report_builder_fields
    args = group_call_field_types
    call_builder_fields = AdvancedSearches::AdvancedSearchFields.new('hotline', args).render
  end

  def group_call_field_types
    translations = @calls_grid.datagrid_attributes[2..-1].map do |header|
      [header, I18n.t("datagrid.columns.calls.#{header.to_s}")]
    end.to_h

    translations = translations.merge({ start_date: I18n.t("datagrid.columns.calls.start_date"), start_time: I18n.t("datagrid.columns.calls.start_time") })

    number_fields = []; text_fields = []; date_picker_fields = []; dropdown_list_options = []

    @calls_grid.filters.zip(@calls_grid.columns.map(&:name).uniq).each do |filter, column_name|
      field_name = column_name
      case "#{filter.class.name.downcase}#{field_name.to_s}"
      when /integerfilter/i
        number_fields << field_name
      when /defaultfilter(?!.*childsafe_agent)/i
        text_fields << field_name
      when /datefilter|start_date/i
        date_picker_fields << field_name
      when /enumfilter|childsafe/i
        dropdown_list_options << field_name
      end
    end

    {
      translation: translations, number_field: number_fields,
      text_field: text_fields, date_picker_field: date_picker_fields,
      dropdown_list_option: get_dropdown_list(dropdown_list_options)
    }
  end

  def get_dropdown_list(dropdown_list_options)
    dropdown_list_options.map do |field_name|
      [field_name, CallHelper.send(field_name)]
    end
  end

  def get_basic_field_translations
    I18n.t('calls')
  end


  class << self
    def referee_id
      Referee.pluck(:name, :id).map{ |name, id| { id => name } }
    end

    def receiving_staff_id
      User.case_workers.map { |user| { user.id => user.name } }
    end

    def phone_call_id
      Call.pluck(:phone_call_id).map { |phone_call_id| { phone_call_id => phone_call_id } }
    end

    def call_type
      values = [Call::TYPES, I18n.t('calls.type').values].transpose.to_h
      values.delete('Spam Call')
      values
    end

    def start_time
      time_range
    end

    def end_time
      time_range
    end

    def time_range
      times = [{'00' => "12:00"}]
      ('01'..'23').each{|d| times << {d => "#{d}:00"} }
      times
    end

    def answered_call
      yes_no_dropdown
    end

    def called_before
      yes_no_dropdown
    end

    def requested_update
      yes_no_dropdown
    end

    def childsafe_agent
      yes_no_dropdown
    end

    def yes_no_dropdown
      { true: 'Yes', false: 'No' }
    end
  end
end

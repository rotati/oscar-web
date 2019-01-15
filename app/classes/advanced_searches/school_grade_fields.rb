module AdvancedSearches
  class SchoolGradeFields
    extend AdvancedSearchHelper

    def self.render
      school_grade  = ['School Grade'].map { |item| drop_list_options('school_grade', format_header('school_grade'), Client::GRADES, format_header('basic_fields')) }
      school_grade
    end

    private

    def self.drop_list_options(field_name, label, values, group)
      {
        id: field_name,
        optgroup: group,
        label: label,
        field: label,
        type: 'string',
        input: 'select',
        values: values,
        operators: ['equal', 'not_equal', 'is_empty', 'is_not_empty', 'between']
      }
    end
  end
end

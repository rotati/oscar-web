class CustomFieldNumericalityValidator < ActiveModel::Validator

  def initialize(record)
    @record = record
  end

  def validate
    return unless @record.properties
    @record.custom_field.field_objs.each do |field|
      if field['type'] == 'number' && (field['min'].present? || field['max'].present?)
        if @record.properties[field['label']].to_f < field['min'].to_f
          @record.errors.add(field['label'], I18n.t('cannot_be_lower', count: field['min'])) if @record.errors[field['label']].empty?
        elsif @record.properties[field['label']].to_f > field['max'].to_f
          @record.errors.add(field['label'], I18n.t('cannot_be_greater', count: field['max'])) if @record.errors[field['label']].empty?
        end
      end
    end
  end
end

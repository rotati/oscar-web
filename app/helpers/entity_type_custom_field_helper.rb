module EntityTypeCustomFieldHelper
  def next_entity_type_custom_field(entity, custom_field)
    if entity.can_create_next_custom_field?(entity, custom_field)
      controller = "#{entity.class.to_s.underscore}_custom_fields"
      link_to controller: controller, action: 'new', custom_field_id: params[:custom_field_id] do
        content_tag(:span, "#{t('.add_new')} #{custom_field.form_title}", class: "btn btn-outline btn-primary button form-btn")
      end
    else
      date = date_format(entity.next_custom_field_date(entity, custom_field))
      content_tag(:span, "#{t('.add_new')} #{custom_field.form_title}", title: "It will be enable on #{date}", class: "btn btn-outline btn-primary button form-btn disabled")
    end
  end
end

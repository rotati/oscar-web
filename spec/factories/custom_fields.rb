FactoryGirl.define do
  factory :custom_field do
    entity_type 'Client'
    fields [{'type'=>'text', 'label'=>'Name'}].to_json
    form_title "#{FFaker::Name.first_name} #{FFaker::Name.last_name}"
  end
end

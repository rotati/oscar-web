FactoryGirl.define do
  default_field = [{"name"=>"email", "type"=>"text", "label"=>"e-mail", "subtype"=>"email", "required"=>true, "className"=>"form-control"}, {"max"=>"5", "min"=>"1", "name"=>"age", "type"=>"number", "label"=>"age", "required"=>true, "className"=>"form-control"}, {"name"=>"description", "type"=>"text", "label"=>"description", "subtype"=>"text", "required"=>true, "className"=>"form-control"}]

  rule_condition = {'rules'=>[{'id'=>'age', 'type'=>'integer', 'field'=>'age', 'input'=>'text', 'value'=>'2', 'operator'=>'greater'}], 'condition'=>'AND'}.to_json

  factory :program_stream do
    name FFaker::Name.name
    rules { rule_condition }
    enrollment default_field
    tracking default_field
    exit_program default_field
  end
end

FactoryGirl.define do
  factory :setting do
    min_assessment 3
    max_assessment 6
    disable_assessment false

    trait :monthly_assessment do
      assessment_frequency 'month'
    end

    trait :weekly_assessment do
      assessment_frequency 'week'
    end

    trait :daily_assessment do
      assessment_frequency 'day'
    end
  end
end

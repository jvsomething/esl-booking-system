FactoryGirl.define do

  factory :lesson do |l|
    l.lesson_date { Faker::Date.between(2.days.ago, (Date.today+3.days )) }
    l.lesson_status { [0,1].sample }
    association :schedule, factory: :schedule
    association :student, factory: :student
    association :subscription, factory: :subscription
  end

end
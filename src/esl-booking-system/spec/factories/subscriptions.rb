FactoryGirl.define do

  factory :subscription do |s|
    s.name { Faker::Company.catch_phrase }
    s.max_daily { Faker::Number.between(1, 10) }
  end

end
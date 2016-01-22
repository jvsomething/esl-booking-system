FactoryGirl.define do

  factory :student do |s|
    password = Faker::Internet.password(10,15)
    s.name { Faker::Name.name }
    s.email { Faker::Internet.safe_email(Faker::Name.first_name) }
    s.password {  password }
    s.password_confirmation { password }
  end

  factory :student_with_subscription, class: Student do |s|
    password = Faker::Internet.password(10,15)
    s.name { Faker::Name.name }
    s.email { Faker::Internet.safe_email(Faker::Name.first_name) }
    s.password {  password }
    s.password_confirmation { password }
    s.subscription_id { create(:subscription).id}
  end

end
FactoryGirl.define do

  factory :schedule do |s|
    start_time = Faker::Time.between(DateTime.now - 5, DateTime.now + 5)
    s.start_time { start_time }
    s.end_time { start_time + (30/1440.0)  }
    s.schedule_status {[0,1].sample }
    association :teacher, factory: :teacher
  end

end
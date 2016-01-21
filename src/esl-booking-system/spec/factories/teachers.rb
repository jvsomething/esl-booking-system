FactoryGirl.define do

  factory :teacher do |t|
    t.name { Faker::Name.name }
    t.gender { [0, 1].sample }
    t.nationality { Faker::Address.country_code }
  end

end
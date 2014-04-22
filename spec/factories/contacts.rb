# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    name { Faker::Name.name }
    phone { Faker::Numbers.phone_number }
    user_id '10'
  end
end

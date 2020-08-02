FactoryBot.define do
  factory :order do
    food_name { Faker::Name.name }
    receiver_email { Faker::Internet.email }
  end
end
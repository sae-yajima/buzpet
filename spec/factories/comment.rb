FactoryBot.define do
    factory :comment do
      text {Faker::Lorem.sentence}
      association :user
      association :pet
    end
end
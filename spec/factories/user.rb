FactoryBot.define do
    factory :user do
        nickname              {Faker::Name.initials(number: 2)}
        email                 {Faker::Internet.free_email}
        password              {'1a' + Faker::Internet.password(min_length: 6)}
        password_confirmation {password}
        name                  {'ジャック'}
        profile               {'のんびり'}
        category              {'犬'}
        
    end
  end
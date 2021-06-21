FactoryBot.define do
    factory :pet do
       
        title                    {"test"}
        catch_copy               {"aaa"}
        image                    {Faker::Lorem.sentence}
        association :user 

        after(:build) do |pet|
            pet.image.attach(io: File.open('spec/images/test.png'), filename: 'test.png')
          end

    end
  end

FactoryGirl.define do

  sequence(:email) { |n| "user#{n}@test.com" }

  factory :user do
    email
    password "1234567890"
    first_name "Harry"
    last_name "Potter"
    admin false

    factory :admin_user do
      admin true
    end
  end
end
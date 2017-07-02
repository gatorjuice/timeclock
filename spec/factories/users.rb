FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user_#{n}@gmail.com" }
    password 'password'
  end

  trait :admin do
    admin true
  end
end

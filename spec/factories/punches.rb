FactoryGirl.define do
  factory :punch do
    user
    pay_period
  end

  trait :clock_in do
    stamp_type 0
  end

  trait :clock_out do
    stamp_type 1
  end
end

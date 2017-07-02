FactoryGirl.define do
  factory :pay_period do
    starting { Time.now }
    ending { 2.weeks.from_now }
  end
end

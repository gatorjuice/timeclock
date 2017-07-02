require 'rails_helper'

RSpec.describe PayPeriod, type: :model do
  describe "validations" do
    it 'is invalid with an overlapping date range' do
      create :pay_period
      expect(build :pay_period).to be_invalid
    end

    it 'is valid with an non-overlapping date range' do
      create :pay_period
      expect(
        build :pay_period,
        starting: 2.weeks.from_now,
        ending: 4.weeks.from_now
      ).to be_valid
    end
  end
end

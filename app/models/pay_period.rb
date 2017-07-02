class PayPeriod < ApplicationRecord
  has_many :punches

  def range_string
    "#{starting.strftime('%m/%d/%Y ')} - #{ending.strftime('%m/%d/%Y ')}"
  end
end

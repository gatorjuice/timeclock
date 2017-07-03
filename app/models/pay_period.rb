class PayPeriod < ApplicationRecord
  has_many :punches
  validates :starting, :ending, presence: true
  validate :date_range_overlap

  scope :exclude_self, -> id { where.not(id: id) }

  def range_string
    "#{starting.strftime('%m/%d/%Y')} - #{ending.strftime('%m/%d/%Y')}"
  end

  def date_range
    (starting..ending)
  end

  private

  def date_range_overlap
    PayPeriod.exclude_self(id).each do |pay_period|
      if pay_period.date_range.overlaps?(date_range)
        self.errors.add(:base, 'Pay Periods cannot have overlapping date ranges')
        break
      end
    end
  end
end

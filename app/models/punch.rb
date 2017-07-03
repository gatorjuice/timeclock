class Punch < ApplicationRecord
  belongs_to :pay_period
  belongs_to :user
  enum stamp_type: [:clock_in, :clock_out]

  def last_modified
    [created_at, updated_at].max
  end
end

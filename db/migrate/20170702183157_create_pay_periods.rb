class CreatePayPeriods < ActiveRecord::Migration[5.1]
  def change
    create_table :pay_periods do |t|
      t.datetime :starting
      t.datetime :ending

      t.timestamps
    end
  end
end

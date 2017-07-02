class CreatePunches < ActiveRecord::Migration[5.1]
  def change
    create_table :punches do |t|
      t.integer :stamp_type, default: 0, index: true
      t.integer :user_id
      t.integer :pay_period_id

      t.timestamps
    end
  end
end

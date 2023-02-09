class CreateShiftTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :shift_times do |t|
      t.string :name_shift
      t.integer :total_hours
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end

class AddEmployeeRefToShiftTimes < ActiveRecord::Migration[7.0]
  def change
    add_reference :shift_times, :employee, null: false, foreign_key: true
  end
end

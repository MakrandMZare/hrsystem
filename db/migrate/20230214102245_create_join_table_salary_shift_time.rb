class CreateJoinTableSalaryShiftTime < ActiveRecord::Migration[7.0]
  def change
    create_join_table :salaries, :shift_times do |t|
      # t.index [:salary_id, :shift_time_id]
      # t.index [:shift_time_id, :salary_id]
    end
  end
end

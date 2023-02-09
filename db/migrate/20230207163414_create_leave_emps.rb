class CreateLeaveEmps < ActiveRecord::Migration[7.0]
  def change
    create_table :leave_emps do |t|
      t.string :employees_id
      t.string :departments_id
      t.date :start_date
      t.date :end_date
      t.string :total_days
      t.string :leave_reason

      t.timestamps
    end
  end
end

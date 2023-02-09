class CreateJoiningEmps < ActiveRecord::Migration[7.0]
  def change
    create_table :joining_emps do |t|
      t.string :employees_id
      t.string :departments_id
      t.string :salary
      t.date :start_date

      t.timestamps
    end
  end
end

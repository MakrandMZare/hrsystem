class CreateJoinTableEmployeeDepartment < ActiveRecord::Migration[7.0]
  def change
    create_join_table :employees, :departments do |t|
      # t.index [:employee_id, :department_id]
      # t.index [:department_id, :employee_id]
    end
  end
end

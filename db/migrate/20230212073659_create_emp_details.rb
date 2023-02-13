class CreateEmpDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :emp_details do |t|
      t.references :employess, null: false, foreign_key: true
      t.references :departments, null: false, foreign_key: true
      t.references :salary, null: false, foreign_key: true
      t.references :shift_times, null: false, foreign_key: true

      t.timestamps
    end
  end
end

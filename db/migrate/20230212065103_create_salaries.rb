class CreateSalaries < ActiveRecord::Migration[7.0]
  def change
    create_table :salaries do |t|
      t.integer :basic
      t.integer :da
      t.integer :hra
      t.integer :pf
      t.integer :total

      t.timestamps
    end
  end
end

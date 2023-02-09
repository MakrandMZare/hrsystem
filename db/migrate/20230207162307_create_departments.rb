class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :dep_name

      t.timestamps
    end
  end
end

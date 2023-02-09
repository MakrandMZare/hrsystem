class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.string :address
      t.string :aadharcard
      t.string :pancard
      t.string :village
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end

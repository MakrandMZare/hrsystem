class CreateEmpTravels < ActiveRecord::Migration[7.0]
  def change
    create_table :emp_travels do |t|
      t.string :employees_id
      t.string :departments_id
      t.string :travel_from
      t.string :travel_to
      t.time :on_date
      t.date :from_date
      t.date :to_date
      t.string :reason_for_travel

      t.timestamps
    end
  end
end

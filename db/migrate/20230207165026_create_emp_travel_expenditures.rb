class CreateEmpTravelExpenditures < ActiveRecord::Migration[7.0]
  def change
    create_table :emp_travel_expenditures do |t|
      t.string :employees_id
      t.string :departments_id
      t.string :travel_from
      t.string :travel_to
      t.time :on_date
      t.date :from_date
      t.date :to_date
      t.string :reason_for_travel
      t.string :mode_of_transportation
      t.string :bill_number
      t.string :paid_amt

      t.timestamps
    end
  end
end

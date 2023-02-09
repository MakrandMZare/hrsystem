class CreateAttendences < ActiveRecord::Migration[7.0]
  def change
    create_table :attendences do |t|
      t.string :employees_id
      t.string :departments_id
      t.timestamp :in_time
      t.timestamp :out_time

      t.timestamps
    end
  end
end

json.extract! emp_travel_expenditure, :id, :employees_id, :departments_id, :travel_from, :travel_to, :on_date, :from_date, :to_date, :reason_for_travel, :mode_of_transportation, :bill_number, :paid_amt, :created_at, :updated_at
json.url emp_travel_expenditure_url(emp_travel_expenditure, format: :json)

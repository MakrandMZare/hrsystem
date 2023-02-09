json.extract! emp_travel, :id, :employees_id, :departments_id, :travel_from, :travel_to, :on_date, :from_date, :to_date, :reason_for_travel, :created_at, :updated_at
json.url emp_travel_url(emp_travel, format: :json)

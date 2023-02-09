json.extract! leave_emp, :id, :employees_id, :departments_id, :start_date, :end_date, :total_days, :leave_reason, :created_at, :updated_at
json.url leave_emp_url(leave_emp, format: :json)

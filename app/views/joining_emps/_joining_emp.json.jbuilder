json.extract! joining_emp, :id, :employees_id, :departments_id, :salary, :start_date, :created_at, :updated_at
json.url joining_emp_url(joining_emp, format: :json)

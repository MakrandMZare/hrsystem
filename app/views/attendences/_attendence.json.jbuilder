json.extract! attendence, :id, :employees_id, :departments_id, :in_time, :out_time, :created_at, :updated_at
json.url attendence_url(attendence, format: :json)

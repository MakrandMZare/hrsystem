json.extract! employee, :id, :first_name, :last_name, :email, :mobile, :address, :aadharcard, :pancard, :village, :city, :state, :created_at, :updated_at
json.url employee_url(employee, format: :json)

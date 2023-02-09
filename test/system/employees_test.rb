require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "should create employee" do
    visit employees_url
    click_on "New employee"

    fill_in "Aadharcard", with: @employee.aadharcard
    fill_in "Address", with: @employee.address
    fill_in "City", with: @employee.city
    fill_in "Email", with: @employee.email
    fill_in "First name", with: @employee.first_name
    fill_in "Last name", with: @employee.last_name
    fill_in "Mobile", with: @employee.mobile
    fill_in "Pancard", with: @employee.pancard
    fill_in "State", with: @employee.state
    fill_in "Village", with: @employee.village
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "should update Employee" do
    visit employee_url(@employee)
    click_on "Edit this employee", match: :first

    fill_in "Aadharcard", with: @employee.aadharcard
    fill_in "Address", with: @employee.address
    fill_in "City", with: @employee.city
    fill_in "Email", with: @employee.email
    fill_in "First name", with: @employee.first_name
    fill_in "Last name", with: @employee.last_name
    fill_in "Mobile", with: @employee.mobile
    fill_in "Pancard", with: @employee.pancard
    fill_in "State", with: @employee.state
    fill_in "Village", with: @employee.village
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee" do
    visit employee_url(@employee)
    click_on "Destroy this employee", match: :first

    assert_text "Employee was successfully destroyed"
  end
end

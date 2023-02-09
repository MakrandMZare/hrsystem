require "application_system_test_case"

class LeaveEmpsTest < ApplicationSystemTestCase
  setup do
    @leave_emp = leave_emps(:one)
  end

  test "visiting the index" do
    visit leave_emps_url
    assert_selector "h1", text: "Leave emps"
  end

  test "should create leave emp" do
    visit leave_emps_url
    click_on "New leave emp"

    fill_in "Departments", with: @leave_emp.departments_id
    fill_in "Employees", with: @leave_emp.employees_id
    fill_in "End date", with: @leave_emp.end_date
    fill_in "Leave reason", with: @leave_emp.leave_reason
    fill_in "Start date", with: @leave_emp.start_date
    fill_in "Total days", with: @leave_emp.total_days
    click_on "Create Leave emp"

    assert_text "Leave emp was successfully created"
    click_on "Back"
  end

  test "should update Leave emp" do
    visit leave_emp_url(@leave_emp)
    click_on "Edit this leave emp", match: :first

    fill_in "Departments", with: @leave_emp.departments_id
    fill_in "Employees", with: @leave_emp.employees_id
    fill_in "End date", with: @leave_emp.end_date
    fill_in "Leave reason", with: @leave_emp.leave_reason
    fill_in "Start date", with: @leave_emp.start_date
    fill_in "Total days", with: @leave_emp.total_days
    click_on "Update Leave emp"

    assert_text "Leave emp was successfully updated"
    click_on "Back"
  end

  test "should destroy Leave emp" do
    visit leave_emp_url(@leave_emp)
    click_on "Destroy this leave emp", match: :first

    assert_text "Leave emp was successfully destroyed"
  end
end

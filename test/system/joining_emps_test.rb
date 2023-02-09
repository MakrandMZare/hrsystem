require "application_system_test_case"

class JoiningEmpsTest < ApplicationSystemTestCase
  setup do
    @joining_emp = joining_emps(:one)
  end

  test "visiting the index" do
    visit joining_emps_url
    assert_selector "h1", text: "Joining emps"
  end

  test "should create joining emp" do
    visit joining_emps_url
    click_on "New joining emp"

    fill_in "Departments", with: @joining_emp.departments_id
    fill_in "Employees", with: @joining_emp.employees_id
    fill_in "Salary", with: @joining_emp.salary
    fill_in "Start date", with: @joining_emp.start_date
    click_on "Create Joining emp"

    assert_text "Joining emp was successfully created"
    click_on "Back"
  end

  test "should update Joining emp" do
    visit joining_emp_url(@joining_emp)
    click_on "Edit this joining emp", match: :first

    fill_in "Departments", with: @joining_emp.departments_id
    fill_in "Employees", with: @joining_emp.employees_id
    fill_in "Salary", with: @joining_emp.salary
    fill_in "Start date", with: @joining_emp.start_date
    click_on "Update Joining emp"

    assert_text "Joining emp was successfully updated"
    click_on "Back"
  end

  test "should destroy Joining emp" do
    visit joining_emp_url(@joining_emp)
    click_on "Destroy this joining emp", match: :first

    assert_text "Joining emp was successfully destroyed"
  end
end

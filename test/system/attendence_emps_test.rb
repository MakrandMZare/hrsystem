require "application_system_test_case"

class AttendenceEmpsTest < ApplicationSystemTestCase
  setup do
    @attendence_emp = attendence_emps(:one)
  end

  test "visiting the index" do
    visit attendence_emps_url
    assert_selector "h1", text: "Attendence emps"
  end

  test "should create attendence emp" do
    visit attendence_emps_url
    click_on "New attendence emp"

    fill_in "Departments", with: @attendence_emp.departments_id
    fill_in "Employees", with: @attendence_emp.employees_id
    fill_in "In time", with: @attendence_emp.in_time
    fill_in "Out time", with: @attendence_emp.out_time
    click_on "Create Attendence emp"

    assert_text "Attendence emp was successfully created"
    click_on "Back"
  end

  test "should update Attendence emp" do
    visit attendence_emp_url(@attendence_emp)
    click_on "Edit this attendence emp", match: :first

    fill_in "Departments", with: @attendence_emp.departments_id
    fill_in "Employees", with: @attendence_emp.employees_id
    fill_in "In time", with: @attendence_emp.in_time
    fill_in "Out time", with: @attendence_emp.out_time
    click_on "Update Attendence emp"

    assert_text "Attendence emp was successfully updated"
    click_on "Back"
  end

  test "should destroy Attendence emp" do
    visit attendence_emp_url(@attendence_emp)
    click_on "Destroy this attendence emp", match: :first

    assert_text "Attendence emp was successfully destroyed"
  end
end

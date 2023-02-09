require "application_system_test_case"

class AttendencesTest < ApplicationSystemTestCase
  setup do
    @attendence = attendences(:one)
  end

  test "visiting the index" do
    visit attendences_url
    assert_selector "h1", text: "Attendences"
  end

  test "should create attendence" do
    visit attendences_url
    click_on "New attendence"

    fill_in "Departments", with: @attendence.departments_id
    fill_in "Employees", with: @attendence.employees_id
    fill_in "In time", with: @attendence.in_time
    fill_in "Out time", with: @attendence.out_time
    click_on "Create Attendence"

    assert_text "Attendence was successfully created"
    click_on "Back"
  end

  test "should update Attendence" do
    visit attendence_url(@attendence)
    click_on "Edit this attendence", match: :first

    fill_in "Departments", with: @attendence.departments_id
    fill_in "Employees", with: @attendence.employees_id
    fill_in "In time", with: @attendence.in_time
    fill_in "Out time", with: @attendence.out_time
    click_on "Update Attendence"

    assert_text "Attendence was successfully updated"
    click_on "Back"
  end

  test "should destroy Attendence" do
    visit attendence_url(@attendence)
    click_on "Destroy this attendence", match: :first

    assert_text "Attendence was successfully destroyed"
  end
end

require "application_system_test_case"

class EmpTravelsTest < ApplicationSystemTestCase
  setup do
    @emp_travel = emp_travels(:one)
  end

  test "visiting the index" do
    visit emp_travels_url
    assert_selector "h1", text: "Emp travels"
  end

  test "should create emp travel" do
    visit emp_travels_url
    click_on "New emp travel"

    fill_in "Departments", with: @emp_travel.departments_id
    fill_in "Employees", with: @emp_travel.employees_id
    fill_in "From date", with: @emp_travel.from_date
    fill_in "On date", with: @emp_travel.on_date
    fill_in "Reason for travel", with: @emp_travel.reason_for_travel
    fill_in "To date", with: @emp_travel.to_date
    fill_in "Travel from", with: @emp_travel.travel_from
    fill_in "Travel to", with: @emp_travel.travel_to
    click_on "Create Emp travel"

    assert_text "Emp travel was successfully created"
    click_on "Back"
  end

  test "should update Emp travel" do
    visit emp_travel_url(@emp_travel)
    click_on "Edit this emp travel", match: :first

    fill_in "Departments", with: @emp_travel.departments_id
    fill_in "Employees", with: @emp_travel.employees_id
    fill_in "From date", with: @emp_travel.from_date
    fill_in "On date", with: @emp_travel.on_date
    fill_in "Reason for travel", with: @emp_travel.reason_for_travel
    fill_in "To date", with: @emp_travel.to_date
    fill_in "Travel from", with: @emp_travel.travel_from
    fill_in "Travel to", with: @emp_travel.travel_to
    click_on "Update Emp travel"

    assert_text "Emp travel was successfully updated"
    click_on "Back"
  end

  test "should destroy Emp travel" do
    visit emp_travel_url(@emp_travel)
    click_on "Destroy this emp travel", match: :first

    assert_text "Emp travel was successfully destroyed"
  end
end

require "application_system_test_case"

class EmpTravelExpendituresTest < ApplicationSystemTestCase
  setup do
    @emp_travel_expenditure = emp_travel_expenditures(:one)
  end

  test "visiting the index" do
    visit emp_travel_expenditures_url
    assert_selector "h1", text: "Emp travel expenditures"
  end

  test "should create emp travel expenditure" do
    visit emp_travel_expenditures_url
    click_on "New emp travel expenditure"

    fill_in "Bill number", with: @emp_travel_expenditure.bill_number
    fill_in "Departments", with: @emp_travel_expenditure.departments_id
    fill_in "Employees", with: @emp_travel_expenditure.employees_id
    fill_in "From date", with: @emp_travel_expenditure.from_date
    fill_in "Mode of transportation", with: @emp_travel_expenditure.mode_of_transportation
    fill_in "On date", with: @emp_travel_expenditure.on_date
    fill_in "Paid amt", with: @emp_travel_expenditure.paid_amt
    fill_in "Reason for travel", with: @emp_travel_expenditure.reason_for_travel
    fill_in "To date", with: @emp_travel_expenditure.to_date
    fill_in "Travel from", with: @emp_travel_expenditure.travel_from
    fill_in "Travel to", with: @emp_travel_expenditure.travel_to
    click_on "Create Emp travel expenditure"

    assert_text "Emp travel expenditure was successfully created"
    click_on "Back"
  end

  test "should update Emp travel expenditure" do
    visit emp_travel_expenditure_url(@emp_travel_expenditure)
    click_on "Edit this emp travel expenditure", match: :first

    fill_in "Bill number", with: @emp_travel_expenditure.bill_number
    fill_in "Departments", with: @emp_travel_expenditure.departments_id
    fill_in "Employees", with: @emp_travel_expenditure.employees_id
    fill_in "From date", with: @emp_travel_expenditure.from_date
    fill_in "Mode of transportation", with: @emp_travel_expenditure.mode_of_transportation
    fill_in "On date", with: @emp_travel_expenditure.on_date
    fill_in "Paid amt", with: @emp_travel_expenditure.paid_amt
    fill_in "Reason for travel", with: @emp_travel_expenditure.reason_for_travel
    fill_in "To date", with: @emp_travel_expenditure.to_date
    fill_in "Travel from", with: @emp_travel_expenditure.travel_from
    fill_in "Travel to", with: @emp_travel_expenditure.travel_to
    click_on "Update Emp travel expenditure"

    assert_text "Emp travel expenditure was successfully updated"
    click_on "Back"
  end

  test "should destroy Emp travel expenditure" do
    visit emp_travel_expenditure_url(@emp_travel_expenditure)
    click_on "Destroy this emp travel expenditure", match: :first

    assert_text "Emp travel expenditure was successfully destroyed"
  end
end

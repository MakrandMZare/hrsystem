require "test_helper"

class EmpTravelExpendituresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emp_travel_expenditure = emp_travel_expenditures(:one)
  end

  test "should get index" do
    get emp_travel_expenditures_url
    assert_response :success
  end

  test "should get new" do
    get new_emp_travel_expenditure_url
    assert_response :success
  end

  test "should create emp_travel_expenditure" do
    assert_difference("EmpTravelExpenditure.count") do
      post emp_travel_expenditures_url, params: { emp_travel_expenditure: { bill_number: @emp_travel_expenditure.bill_number, departments_id: @emp_travel_expenditure.departments_id, employees_id: @emp_travel_expenditure.employees_id, from_date: @emp_travel_expenditure.from_date, mode_of_transportation: @emp_travel_expenditure.mode_of_transportation, on_date: @emp_travel_expenditure.on_date, paid_amt: @emp_travel_expenditure.paid_amt, reason_for_travel: @emp_travel_expenditure.reason_for_travel, to_date: @emp_travel_expenditure.to_date, travel_from: @emp_travel_expenditure.travel_from, travel_to: @emp_travel_expenditure.travel_to } }
    end

    assert_redirected_to emp_travel_expenditure_url(EmpTravelExpenditure.last)
  end

  test "should show emp_travel_expenditure" do
    get emp_travel_expenditure_url(@emp_travel_expenditure)
    assert_response :success
  end

  test "should get edit" do
    get edit_emp_travel_expenditure_url(@emp_travel_expenditure)
    assert_response :success
  end

  test "should update emp_travel_expenditure" do
    patch emp_travel_expenditure_url(@emp_travel_expenditure), params: { emp_travel_expenditure: { bill_number: @emp_travel_expenditure.bill_number, departments_id: @emp_travel_expenditure.departments_id, employees_id: @emp_travel_expenditure.employees_id, from_date: @emp_travel_expenditure.from_date, mode_of_transportation: @emp_travel_expenditure.mode_of_transportation, on_date: @emp_travel_expenditure.on_date, paid_amt: @emp_travel_expenditure.paid_amt, reason_for_travel: @emp_travel_expenditure.reason_for_travel, to_date: @emp_travel_expenditure.to_date, travel_from: @emp_travel_expenditure.travel_from, travel_to: @emp_travel_expenditure.travel_to } }
    assert_redirected_to emp_travel_expenditure_url(@emp_travel_expenditure)
  end

  test "should destroy emp_travel_expenditure" do
    assert_difference("EmpTravelExpenditure.count", -1) do
      delete emp_travel_expenditure_url(@emp_travel_expenditure)
    end

    assert_redirected_to emp_travel_expenditures_url
  end
end

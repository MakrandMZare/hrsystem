require "test_helper"

class EmpTravelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emp_travel = emp_travels(:one)
  end

  test "should get index" do
    get emp_travels_url
    assert_response :success
  end

  test "should get new" do
    get new_emp_travel_url
    assert_response :success
  end

  test "should create emp_travel" do
    assert_difference("EmpTravel.count") do
      post emp_travels_url, params: { emp_travel: { departments_id: @emp_travel.departments_id, employees_id: @emp_travel.employees_id, from_date: @emp_travel.from_date, on_date: @emp_travel.on_date, reason_for_travel: @emp_travel.reason_for_travel, to_date: @emp_travel.to_date, travel_from: @emp_travel.travel_from, travel_to: @emp_travel.travel_to } }
    end

    assert_redirected_to emp_travel_url(EmpTravel.last)
  end

  test "should show emp_travel" do
    get emp_travel_url(@emp_travel)
    assert_response :success
  end

  test "should get edit" do
    get edit_emp_travel_url(@emp_travel)
    assert_response :success
  end

  test "should update emp_travel" do
    patch emp_travel_url(@emp_travel), params: { emp_travel: { departments_id: @emp_travel.departments_id, employees_id: @emp_travel.employees_id, from_date: @emp_travel.from_date, on_date: @emp_travel.on_date, reason_for_travel: @emp_travel.reason_for_travel, to_date: @emp_travel.to_date, travel_from: @emp_travel.travel_from, travel_to: @emp_travel.travel_to } }
    assert_redirected_to emp_travel_url(@emp_travel)
  end

  test "should destroy emp_travel" do
    assert_difference("EmpTravel.count", -1) do
      delete emp_travel_url(@emp_travel)
    end

    assert_redirected_to emp_travels_url
  end
end

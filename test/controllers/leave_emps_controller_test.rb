require "test_helper"

class LeaveEmpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leave_emp = leave_emps(:one)
  end

  test "should get index" do
    get leave_emps_url
    assert_response :success
  end

  test "should get new" do
    get new_leave_emp_url
    assert_response :success
  end

  test "should create leave_emp" do
    assert_difference("LeaveEmp.count") do
      post leave_emps_url, params: { leave_emp: { departments_id: @leave_emp.departments_id, employees_id: @leave_emp.employees_id, end_date: @leave_emp.end_date, leave_reason: @leave_emp.leave_reason, start_date: @leave_emp.start_date, total_days: @leave_emp.total_days } }
    end

    assert_redirected_to leave_emp_url(LeaveEmp.last)
  end

  test "should show leave_emp" do
    get leave_emp_url(@leave_emp)
    assert_response :success
  end

  test "should get edit" do
    get edit_leave_emp_url(@leave_emp)
    assert_response :success
  end

  test "should update leave_emp" do
    patch leave_emp_url(@leave_emp), params: { leave_emp: { departments_id: @leave_emp.departments_id, employees_id: @leave_emp.employees_id, end_date: @leave_emp.end_date, leave_reason: @leave_emp.leave_reason, start_date: @leave_emp.start_date, total_days: @leave_emp.total_days } }
    assert_redirected_to leave_emp_url(@leave_emp)
  end

  test "should destroy leave_emp" do
    assert_difference("LeaveEmp.count", -1) do
      delete leave_emp_url(@leave_emp)
    end

    assert_redirected_to leave_emps_url
  end
end

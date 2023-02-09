require "test_helper"

class JoiningEmpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joining_emp = joining_emps(:one)
  end

  test "should get index" do
    get joining_emps_url
    assert_response :success
  end

  test "should get new" do
    get new_joining_emp_url
    assert_response :success
  end

  test "should create joining_emp" do
    assert_difference("JoiningEmp.count") do
      post joining_emps_url, params: { joining_emp: { departments_id: @joining_emp.departments_id, employees_id: @joining_emp.employees_id, salary: @joining_emp.salary, start_date: @joining_emp.start_date } }
    end

    assert_redirected_to joining_emp_url(JoiningEmp.last)
  end

  test "should show joining_emp" do
    get joining_emp_url(@joining_emp)
    assert_response :success
  end

  test "should get edit" do
    get edit_joining_emp_url(@joining_emp)
    assert_response :success
  end

  test "should update joining_emp" do
    patch joining_emp_url(@joining_emp), params: { joining_emp: { departments_id: @joining_emp.departments_id, employees_id: @joining_emp.employees_id, salary: @joining_emp.salary, start_date: @joining_emp.start_date } }
    assert_redirected_to joining_emp_url(@joining_emp)
  end

  test "should destroy joining_emp" do
    assert_difference("JoiningEmp.count", -1) do
      delete joining_emp_url(@joining_emp)
    end

    assert_redirected_to joining_emps_url
  end
end

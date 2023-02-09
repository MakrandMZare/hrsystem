require "test_helper"

class AttendenceEmpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attendence_emp = attendence_emps(:one)
  end

  test "should get index" do
    get attendence_emps_url
    assert_response :success
  end

  test "should get new" do
    get new_attendence_emp_url
    assert_response :success
  end

  test "should create attendence_emp" do
    assert_difference("AttendenceEmp.count") do
      post attendence_emps_url, params: { attendence_emp: { departments_id: @attendence_emp.departments_id, employees_id: @attendence_emp.employees_id, in_time: @attendence_emp.in_time, out_time: @attendence_emp.out_time } }
    end

    assert_redirected_to attendence_emp_url(AttendenceEmp.last)
  end

  test "should show attendence_emp" do
    get attendence_emp_url(@attendence_emp)
    assert_response :success
  end

  test "should get edit" do
    get edit_attendence_emp_url(@attendence_emp)
    assert_response :success
  end

  test "should update attendence_emp" do
    patch attendence_emp_url(@attendence_emp), params: { attendence_emp: { departments_id: @attendence_emp.departments_id, employees_id: @attendence_emp.employees_id, in_time: @attendence_emp.in_time, out_time: @attendence_emp.out_time } }
    assert_redirected_to attendence_emp_url(@attendence_emp)
  end

  test "should destroy attendence_emp" do
    assert_difference("AttendenceEmp.count", -1) do
      delete attendence_emp_url(@attendence_emp)
    end

    assert_redirected_to attendence_emps_url
  end
end

require "test_helper"

class ShiftTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shift_time = shift_times(:one)
  end

  test "should get index" do
    get shift_times_url
    assert_response :success
  end

  test "should get new" do
    get new_shift_time_url
    assert_response :success
  end

  test "should create shift_time" do
    assert_difference("ShiftTime.count") do
      post shift_times_url, params: { shift_time: { end_time: @shift_time.end_time, name_shift: @shift_time.name_shift, start_time: @shift_time.start_time, total_hours: @shift_time.total_hours } }
    end

    assert_redirected_to shift_time_url(ShiftTime.last)
  end

  test "should show shift_time" do
    get shift_time_url(@shift_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_shift_time_url(@shift_time)
    assert_response :success
  end

  test "should update shift_time" do
    patch shift_time_url(@shift_time), params: { shift_time: { end_time: @shift_time.end_time, name_shift: @shift_time.name_shift, start_time: @shift_time.start_time, total_hours: @shift_time.total_hours } }
    assert_redirected_to shift_time_url(@shift_time)
  end

  test "should destroy shift_time" do
    assert_difference("ShiftTime.count", -1) do
      delete shift_time_url(@shift_time)
    end

    assert_redirected_to shift_times_url
  end
end

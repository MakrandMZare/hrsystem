require "test_helper"

class TravelDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travel_detail = travel_details(:one)
  end

  test "should get index" do
    get travel_details_url
    assert_response :success
  end

  test "should get new" do
    get new_travel_detail_url
    assert_response :success
  end

  test "should create travel_detail" do
    assert_difference("TravelDetail.count") do
      post travel_details_url, params: { travel_detail: { departments_id: @travel_detail.departments_id, employees_id: @travel_detail.employees_id, from_date: @travel_detail.from_date, on_date: @travel_detail.on_date, reason_for_travel: @travel_detail.reason_for_travel, to_date: @travel_detail.to_date, travel_from: @travel_detail.travel_from, travel_to: @travel_detail.travel_to } }
    end

    assert_redirected_to travel_detail_url(TravelDetail.last)
  end

  test "should show travel_detail" do
    get travel_detail_url(@travel_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_travel_detail_url(@travel_detail)
    assert_response :success
  end

  test "should update travel_detail" do
    patch travel_detail_url(@travel_detail), params: { travel_detail: { departments_id: @travel_detail.departments_id, employees_id: @travel_detail.employees_id, from_date: @travel_detail.from_date, on_date: @travel_detail.on_date, reason_for_travel: @travel_detail.reason_for_travel, to_date: @travel_detail.to_date, travel_from: @travel_detail.travel_from, travel_to: @travel_detail.travel_to } }
    assert_redirected_to travel_detail_url(@travel_detail)
  end

  test "should destroy travel_detail" do
    assert_difference("TravelDetail.count", -1) do
      delete travel_detail_url(@travel_detail)
    end

    assert_redirected_to travel_details_url
  end
end

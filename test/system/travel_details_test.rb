require "application_system_test_case"

class TravelDetailsTest < ApplicationSystemTestCase
  setup do
    @travel_detail = travel_details(:one)
  end

  test "visiting the index" do
    visit travel_details_url
    assert_selector "h1", text: "Travel details"
  end

  test "should create travel detail" do
    visit travel_details_url
    click_on "New travel detail"

    fill_in "Departments", with: @travel_detail.departments_id
    fill_in "Employees", with: @travel_detail.employees_id
    fill_in "From date", with: @travel_detail.from_date
    fill_in "On date", with: @travel_detail.on_date
    fill_in "Reason for travel", with: @travel_detail.reason_for_travel
    fill_in "To date", with: @travel_detail.to_date
    fill_in "Travel from", with: @travel_detail.travel_from
    fill_in "Travel to", with: @travel_detail.travel_to
    click_on "Create Travel detail"

    assert_text "Travel detail was successfully created"
    click_on "Back"
  end

  test "should update Travel detail" do
    visit travel_detail_url(@travel_detail)
    click_on "Edit this travel detail", match: :first

    fill_in "Departments", with: @travel_detail.departments_id
    fill_in "Employees", with: @travel_detail.employees_id
    fill_in "From date", with: @travel_detail.from_date
    fill_in "On date", with: @travel_detail.on_date
    fill_in "Reason for travel", with: @travel_detail.reason_for_travel
    fill_in "To date", with: @travel_detail.to_date
    fill_in "Travel from", with: @travel_detail.travel_from
    fill_in "Travel to", with: @travel_detail.travel_to
    click_on "Update Travel detail"

    assert_text "Travel detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Travel detail" do
    visit travel_detail_url(@travel_detail)
    click_on "Destroy this travel detail", match: :first

    assert_text "Travel detail was successfully destroyed"
  end
end

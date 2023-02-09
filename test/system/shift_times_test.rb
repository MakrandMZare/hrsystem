require "application_system_test_case"

class ShiftTimesTest < ApplicationSystemTestCase
  setup do
    @shift_time = shift_times(:one)
  end

  test "visiting the index" do
    visit shift_times_url
    assert_selector "h1", text: "Shift times"
  end

  test "should create shift time" do
    visit shift_times_url
    click_on "New shift time"

    fill_in "End time", with: @shift_time.end_time
    fill_in "Name shift", with: @shift_time.name_shift
    fill_in "Start time", with: @shift_time.start_time
    fill_in "Total hours", with: @shift_time.total_hours
    click_on "Create Shift time"

    assert_text "Shift time was successfully created"
    click_on "Back"
  end

  test "should update Shift time" do
    visit shift_time_url(@shift_time)
    click_on "Edit this shift time", match: :first

    fill_in "End time", with: @shift_time.end_time
    fill_in "Name shift", with: @shift_time.name_shift
    fill_in "Start time", with: @shift_time.start_time
    fill_in "Total hours", with: @shift_time.total_hours
    click_on "Update Shift time"

    assert_text "Shift time was successfully updated"
    click_on "Back"
  end

  test "should destroy Shift time" do
    visit shift_time_url(@shift_time)
    click_on "Destroy this shift time", match: :first

    assert_text "Shift time was successfully destroyed"
  end
end

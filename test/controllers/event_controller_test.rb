require 'test_helper'

class EventControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get event_name:string_url
    assert_response :success
  end

  test "should get headline:string" do
    get event_headline:string_url
    assert_response :success
  end

  test "should get abstract:text" do
    get event_abstract:text_url
    assert_response :success
  end

  test "should get location:string" do
    get event_location:string_url
    assert_response :success
  end

  test "should get start_time:datetime" do
    get event_start_time:datetime_url
    assert_response :success
  end

  test "should get speaker:string" do
    get event_speaker:string_url
    assert_response :success
  end

  test "should get company:string" do
    get event_company:string_url
    assert_response :success
  end

end

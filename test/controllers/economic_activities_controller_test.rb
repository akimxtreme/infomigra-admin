require 'test_helper'

class EconomicActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @economic_activity = economic_activities(:one)
  end

  test "should get index" do
    get economic_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_economic_activity_url
    assert_response :success
  end

  test "should create economic_activity" do
    assert_difference('EconomicActivity.count') do
      post economic_activities_url, params: { economic_activity: { description: @economic_activity.description, name: @economic_activity.name } }
    end

    assert_redirected_to economic_activity_url(EconomicActivity.last)
  end

  test "should show economic_activity" do
    get economic_activity_url(@economic_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_economic_activity_url(@economic_activity)
    assert_response :success
  end

  test "should update economic_activity" do
    patch economic_activity_url(@economic_activity), params: { economic_activity: { description: @economic_activity.description, name: @economic_activity.name } }
    assert_redirected_to economic_activity_url(@economic_activity)
  end

  test "should destroy economic_activity" do
    assert_difference('EconomicActivity.count', -1) do
      delete economic_activity_url(@economic_activity)
    end

    assert_redirected_to economic_activities_url
  end
end

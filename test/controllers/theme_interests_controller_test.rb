require 'test_helper'

class ThemeInterestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theme_interest = theme_interests(:one)
  end

  test "should get index" do
    get theme_interests_url
    assert_response :success
  end

  test "should get new" do
    get new_theme_interest_url
    assert_response :success
  end

  test "should create theme_interest" do
    assert_difference('ThemeInterest.count') do
      post theme_interests_url, params: { theme_interest: { description: @theme_interest.description, name: @theme_interest.name } }
    end

    assert_redirected_to theme_interest_url(ThemeInterest.last)
  end

  test "should show theme_interest" do
    get theme_interest_url(@theme_interest)
    assert_response :success
  end

  test "should get edit" do
    get edit_theme_interest_url(@theme_interest)
    assert_response :success
  end

  test "should update theme_interest" do
    patch theme_interest_url(@theme_interest), params: { theme_interest: { description: @theme_interest.description, name: @theme_interest.name } }
    assert_redirected_to theme_interest_url(@theme_interest)
  end

  test "should destroy theme_interest" do
    assert_difference('ThemeInterest.count', -1) do
      delete theme_interest_url(@theme_interest)
    end

    assert_redirected_to theme_interests_url
  end
end

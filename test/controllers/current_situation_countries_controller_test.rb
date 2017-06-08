require 'test_helper'

class CurrentSituationCountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @current_situation_country = current_situation_countries(:one)
  end

  test "should get index" do
    get current_situation_countries_url
    assert_response :success
  end

  test "should get new" do
    get new_current_situation_country_url
    assert_response :success
  end

  test "should create current_situation_country" do
    assert_difference('CurrentSituationCountry.count') do
      post current_situation_countries_url, params: { current_situation_country: { description: @current_situation_country.description, name: @current_situation_country.name } }
    end

    assert_redirected_to current_situation_country_url(CurrentSituationCountry.last)
  end

  test "should show current_situation_country" do
    get current_situation_country_url(@current_situation_country)
    assert_response :success
  end

  test "should get edit" do
    get edit_current_situation_country_url(@current_situation_country)
    assert_response :success
  end

  test "should update current_situation_country" do
    patch current_situation_country_url(@current_situation_country), params: { current_situation_country: { description: @current_situation_country.description, name: @current_situation_country.name } }
    assert_redirected_to current_situation_country_url(@current_situation_country)
  end

  test "should destroy current_situation_country" do
    assert_difference('CurrentSituationCountry.count', -1) do
      delete current_situation_country_url(@current_situation_country)
    end

    assert_redirected_to current_situation_countries_url
  end
end

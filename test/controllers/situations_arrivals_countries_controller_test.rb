require 'test_helper'

class SituationsArrivalsCountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @situations_arrivals_country = situations_arrivals_countries(:one)
  end

  test "should get index" do
    get situations_arrivals_countries_url
    assert_response :success
  end

  test "should get new" do
    get new_situations_arrivals_country_url
    assert_response :success
  end

  test "should create situations_arrivals_country" do
    assert_difference('SituationsArrivalsCountry.count') do
      post situations_arrivals_countries_url, params: { situations_arrivals_country: { description: @situations_arrivals_country.description, name: @situations_arrivals_country.name, percentage_profile: @situations_arrivals_country.percentage_profile } }
    end

    assert_redirected_to situations_arrivals_country_url(SituationsArrivalsCountry.last)
  end

  test "should show situations_arrivals_country" do
    get situations_arrivals_country_url(@situations_arrivals_country)
    assert_response :success
  end

  test "should get edit" do
    get edit_situations_arrivals_country_url(@situations_arrivals_country)
    assert_response :success
  end

  test "should update situations_arrivals_country" do
    patch situations_arrivals_country_url(@situations_arrivals_country), params: { situations_arrivals_country: { description: @situations_arrivals_country.description, name: @situations_arrivals_country.name, percentage_profile: @situations_arrivals_country.percentage_profile } }
    assert_redirected_to situations_arrivals_country_url(@situations_arrivals_country)
  end

  test "should destroy situations_arrivals_country" do
    assert_difference('SituationsArrivalsCountry.count', -1) do
      delete situations_arrivals_country_url(@situations_arrivals_country)
    end

    assert_redirected_to situations_arrivals_countries_url
  end
end

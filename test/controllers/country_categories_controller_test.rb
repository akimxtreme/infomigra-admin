require 'test_helper'

class CountryCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @country_category = country_categories(:one)
  end

  test "should get index" do
    get country_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_country_category_url
    assert_response :success
  end

  test "should create country_category" do
    assert_difference('CountryCategory.count') do
      post country_categories_url, params: { country_category: { description: @country_category.description, name: @country_category.name, percentage_profile: @country_category.percentage_profile } }
    end

    assert_redirected_to country_category_url(CountryCategory.last)
  end

  test "should show country_category" do
    get country_category_url(@country_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_country_category_url(@country_category)
    assert_response :success
  end

  test "should update country_category" do
    patch country_category_url(@country_category), params: { country_category: { description: @country_category.description, name: @country_category.name, percentage_profile: @country_category.percentage_profile } }
    assert_redirected_to country_category_url(@country_category)
  end

  test "should destroy country_category" do
    assert_difference('CountryCategory.count', -1) do
      delete country_category_url(@country_category)
    end

    assert_redirected_to country_categories_url
  end
end

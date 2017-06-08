require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { country_categories_id: @profile.country_categories_id, current_statuses_id: @profile.current_statuses_id, family_bonds_id: @profile.family_bonds_id, situations_arrivals_countries_id: @profile.situations_arrivals_countries_id } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { country_categories_id: @profile.country_categories_id, current_statuses_id: @profile.current_statuses_id, family_bonds_id: @profile.family_bonds_id, situations_arrivals_countries_id: @profile.situations_arrivals_countries_id } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end

require 'test_helper'

class SexualIdentitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sexual_identity = sexual_identities(:one)
  end

  test "should get index" do
    get sexual_identities_url
    assert_response :success
  end

  test "should get new" do
    get new_sexual_identity_url
    assert_response :success
  end

  test "should create sexual_identity" do
    assert_difference('SexualIdentity.count') do
      post sexual_identities_url, params: { sexual_identity: { description: @sexual_identity.description, name: @sexual_identity.name } }
    end

    assert_redirected_to sexual_identity_url(SexualIdentity.last)
  end

  test "should show sexual_identity" do
    get sexual_identity_url(@sexual_identity)
    assert_response :success
  end

  test "should get edit" do
    get edit_sexual_identity_url(@sexual_identity)
    assert_response :success
  end

  test "should update sexual_identity" do
    patch sexual_identity_url(@sexual_identity), params: { sexual_identity: { description: @sexual_identity.description, name: @sexual_identity.name } }
    assert_redirected_to sexual_identity_url(@sexual_identity)
  end

  test "should destroy sexual_identity" do
    assert_difference('SexualIdentity.count', -1) do
      delete sexual_identity_url(@sexual_identity)
    end

    assert_redirected_to sexual_identities_url
  end
end

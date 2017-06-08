require 'test_helper'

class UserStepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_step = user_steps(:one)
  end

  test "should get index" do
    get user_steps_url
    assert_response :success
  end

  test "should get new" do
    get new_user_step_url
    assert_response :success
  end

  test "should create user_step" do
    assert_difference('UserStep.count') do
      post user_steps_url, params: { user_step: { steps_id: @user_step.steps_id, users_id: @user_step.users_id } }
    end

    assert_redirected_to user_step_url(UserStep.last)
  end

  test "should show user_step" do
    get user_step_url(@user_step)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_step_url(@user_step)
    assert_response :success
  end

  test "should update user_step" do
    patch user_step_url(@user_step), params: { user_step: { steps_id: @user_step.steps_id, users_id: @user_step.users_id } }
    assert_redirected_to user_step_url(@user_step)
  end

  test "should destroy user_step" do
    assert_difference('UserStep.count', -1) do
      delete user_step_url(@user_step)
    end

    assert_redirected_to user_steps_url
  end
end

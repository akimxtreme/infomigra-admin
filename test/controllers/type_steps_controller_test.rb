require 'test_helper'

class TypeStepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_step = type_steps(:one)
  end

  test "should get index" do
    get type_steps_url
    assert_response :success
  end

  test "should get new" do
    get new_type_step_url
    assert_response :success
  end

  test "should create type_step" do
    assert_difference('TypeStep.count') do
      post type_steps_url, params: { type_step: { description: @type_step.description, name: @type_step.name } }
    end

    assert_redirected_to type_step_url(TypeStep.last)
  end

  test "should show type_step" do
    get type_step_url(@type_step)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_step_url(@type_step)
    assert_response :success
  end

  test "should update type_step" do
    patch type_step_url(@type_step), params: { type_step: { description: @type_step.description, name: @type_step.name } }
    assert_redirected_to type_step_url(@type_step)
  end

  test "should destroy type_step" do
    assert_difference('TypeStep.count', -1) do
      delete type_step_url(@type_step)
    end

    assert_redirected_to type_steps_url
  end
end

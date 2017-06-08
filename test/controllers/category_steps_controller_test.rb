require 'test_helper'

class CategoryStepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_step = category_steps(:one)
  end

  test "should get index" do
    get category_steps_url
    assert_response :success
  end

  test "should get new" do
    get new_category_step_url
    assert_response :success
  end

  test "should create category_step" do
    assert_difference('CategoryStep.count') do
      post category_steps_url, params: { category_step: { description: @category_step.description, icon: @category_step.icon, name: @category_step.name } }
    end

    assert_redirected_to category_step_url(CategoryStep.last)
  end

  test "should show category_step" do
    get category_step_url(@category_step)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_step_url(@category_step)
    assert_response :success
  end

  test "should update category_step" do
    patch category_step_url(@category_step), params: { category_step: { description: @category_step.description, icon: @category_step.icon, name: @category_step.name } }
    assert_redirected_to category_step_url(@category_step)
  end

  test "should destroy category_step" do
    assert_difference('CategoryStep.count', -1) do
      delete category_step_url(@category_step)
    end

    assert_redirected_to category_steps_url
  end
end

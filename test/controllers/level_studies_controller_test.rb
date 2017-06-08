require 'test_helper'

class LevelStudiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @level_study = level_studies(:one)
  end

  test "should get index" do
    get level_studies_url
    assert_response :success
  end

  test "should get new" do
    get new_level_study_url
    assert_response :success
  end

  test "should create level_study" do
    assert_difference('LevelStudy.count') do
      post level_studies_url, params: { level_study: { description: @level_study.description, name: @level_study.name } }
    end

    assert_redirected_to level_study_url(LevelStudy.last)
  end

  test "should show level_study" do
    get level_study_url(@level_study)
    assert_response :success
  end

  test "should get edit" do
    get edit_level_study_url(@level_study)
    assert_response :success
  end

  test "should update level_study" do
    patch level_study_url(@level_study), params: { level_study: { description: @level_study.description, name: @level_study.name } }
    assert_redirected_to level_study_url(@level_study)
  end

  test "should destroy level_study" do
    assert_difference('LevelStudy.count', -1) do
      delete level_study_url(@level_study)
    end

    assert_redirected_to level_studies_url
  end
end

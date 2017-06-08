require 'test_helper'

class SentimentalSituationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sentimental_situation = sentimental_situations(:one)
  end

  test "should get index" do
    get sentimental_situations_url
    assert_response :success
  end

  test "should get new" do
    get new_sentimental_situation_url
    assert_response :success
  end

  test "should create sentimental_situation" do
    assert_difference('SentimentalSituation.count') do
      post sentimental_situations_url, params: { sentimental_situation: { description: @sentimental_situation.description, name: @sentimental_situation.name } }
    end

    assert_redirected_to sentimental_situation_url(SentimentalSituation.last)
  end

  test "should show sentimental_situation" do
    get sentimental_situation_url(@sentimental_situation)
    assert_response :success
  end

  test "should get edit" do
    get edit_sentimental_situation_url(@sentimental_situation)
    assert_response :success
  end

  test "should update sentimental_situation" do
    patch sentimental_situation_url(@sentimental_situation), params: { sentimental_situation: { description: @sentimental_situation.description, name: @sentimental_situation.name } }
    assert_redirected_to sentimental_situation_url(@sentimental_situation)
  end

  test "should destroy sentimental_situation" do
    assert_difference('SentimentalSituation.count', -1) do
      delete sentimental_situation_url(@sentimental_situation)
    end

    assert_redirected_to sentimental_situations_url
  end
end

require 'test_helper'

class YouWantToDosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @you_want_to_do = you_want_to_dos(:one)
  end

  test "should get index" do
    get you_want_to_dos_url
    assert_response :success
  end

  test "should get new" do
    get new_you_want_to_do_url
    assert_response :success
  end

  test "should create you_want_to_do" do
    assert_difference('YouWantToDo.count') do
      post you_want_to_dos_url, params: { you_want_to_do: { description: @you_want_to_do.description, name: @you_want_to_do.name } }
    end

    assert_redirected_to you_want_to_do_url(YouWantToDo.last)
  end

  test "should show you_want_to_do" do
    get you_want_to_do_url(@you_want_to_do)
    assert_response :success
  end

  test "should get edit" do
    get edit_you_want_to_do_url(@you_want_to_do)
    assert_response :success
  end

  test "should update you_want_to_do" do
    patch you_want_to_do_url(@you_want_to_do), params: { you_want_to_do: { description: @you_want_to_do.description, name: @you_want_to_do.name } }
    assert_redirected_to you_want_to_do_url(@you_want_to_do)
  end

  test "should destroy you_want_to_do" do
    assert_difference('YouWantToDo.count', -1) do
      delete you_want_to_do_url(@you_want_to_do)
    end

    assert_redirected_to you_want_to_dos_url
  end
end

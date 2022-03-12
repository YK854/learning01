require 'test_helper'

class Books3ControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get books3_new_url
    assert_response :success
  end

  test "should get create" do
    get books3_create_url
    assert_response :success
  end

  test "should get show" do
    get books3_show_url
    assert_response :success
  end

  test "should get edit" do
    get books3_edit_url
    assert_response :success
  end

  test "should get updete" do
    get books3_updete_url
    assert_response :success
  end

end

require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_home_url
    assert_response :success
  end

  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get help" do
    get home_help_url
    assert_response :success
  end

end

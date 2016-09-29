require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get reviewlist" do
    get reviews_reviewlist_url
    assert_response :success
  end

end

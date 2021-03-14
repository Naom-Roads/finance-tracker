require "test_helper"

class FriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get my_friendships" do
    get friends_my_friendships_url
    assert_response :success
  end
end

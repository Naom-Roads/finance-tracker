require "test_helper"

class FriendshiprsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get friendshiprs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get friendshiprs_destroy_url
    assert_response :success
  end
end

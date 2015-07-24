require 'test_helper'

class NotificationsControllerTest < ActionController::TestCase
  test "show home page" do
    get :index
    assert_response :success
  end

  test "server error" do
    get :server_error
    assert_response 302
  end

end

require 'test_helper'

class NotificationsControllerTest < ActionController::TestCase
  test "show home page" do
    get :index
    assert_response :success
  end

  test "server error" do
    ENV['TWILIO_NUMBER'] = 'twilio-number'
    client   = Minitest::Mock.new
    messages = Minitest::Mock.new

    alert_message = <<MSG
[This is a test] ALERT!
It appears the server is having issues.
Exception: A test exception.
Go to: http://newrelic.com for more details."
MSG

    messages.expect(:create, true, [{ from: ENV['TWILIO_NUMBER'], to: "+15553185056", body: alert_message }])
    client.expect(:messages, messages)

    Twilio::REST::Client.stub :new, client do
      get :server_error
      assert_response 302
    end

    client.verify
    messages.verify
  end
end

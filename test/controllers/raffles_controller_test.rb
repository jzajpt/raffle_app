require 'test_helper'

class RafflesControllerTest < ActionDispatch::IntegrationTest
  test "should respond to root url" do
    get root_url
    assert_response :success
  end
end

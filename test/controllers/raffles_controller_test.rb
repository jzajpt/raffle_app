require 'test_helper'

class RafflesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get raffles_index_url
    assert_response :success
  end

end

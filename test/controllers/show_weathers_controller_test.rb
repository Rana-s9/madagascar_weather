require "test_helper"

class ShowWeathersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get show_weathers_index_url
    assert_response :success
  end
end

require 'test_helper'

class WeolcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get weolcome_index_url
    assert_response :success
  end

end

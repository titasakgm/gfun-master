require 'test_helper'

class UtilControllerTest < ActionController::TestCase
  test "should get test1" do
    get :test1
    assert_response :success
  end

end

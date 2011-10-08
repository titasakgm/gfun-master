require 'test_helper'

class ReportControllerTest < ActionController::TestCase
  test "should get budget" do
    get :budget
    assert_response :success
  end

end

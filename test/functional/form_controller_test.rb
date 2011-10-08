require 'test_helper'

class FormControllerTest < ActionController::TestCase
  test "should get edit_school" do
    get :edit_school
    assert_response :success
  end

end

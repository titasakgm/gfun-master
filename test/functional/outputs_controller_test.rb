require 'test_helper'

class OutputsControllerTest < ActionController::TestCase
  test "should get o1" do
    get :o1
    assert_response :success
  end

  test "should get o2" do
    get :o2
    assert_response :success
  end

  test "should get o3" do
    get :o3
    assert_response :success
  end

end

require 'test_helper'

class Lr602556sControllerTest < ActionController::TestCase
  setup do
    @lr602556 = lr602556s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr602556s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr602556" do
    assert_difference('Lr602556.count') do
      post :create, :lr602556 => @lr602556.attributes
    end

    assert_redirected_to lr602556_path(assigns(:lr602556))
  end

  test "should show lr602556" do
    get :show, :id => @lr602556.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr602556.to_param
    assert_response :success
  end

  test "should update lr602556" do
    put :update, :id => @lr602556.to_param, :lr602556 => @lr602556.attributes
    assert_redirected_to lr602556_path(assigns(:lr602556))
  end

  test "should destroy lr602556" do
    assert_difference('Lr602556.count', -1) do
      delete :destroy, :id => @lr602556.to_param
    end

    assert_redirected_to lr602556s_path
  end
end

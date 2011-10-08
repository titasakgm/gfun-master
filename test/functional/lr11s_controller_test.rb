require 'test_helper'

class Lr11sControllerTest < ActionController::TestCase
  setup do
    @lr11 = lr11s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr11s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr11" do
    assert_difference('Lr11.count') do
      post :create, :lr11 => @lr11.attributes
    end

    assert_redirected_to lr11_path(assigns(:lr11))
  end

  test "should show lr11" do
    get :show, :id => @lr11.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr11.to_param
    assert_response :success
  end

  test "should update lr11" do
    put :update, :id => @lr11.to_param, :lr11 => @lr11.attributes
    assert_redirected_to lr11_path(assigns(:lr11))
  end

  test "should destroy lr11" do
    assert_difference('Lr11.count', -1) do
      delete :destroy, :id => @lr11.to_param
    end

    assert_redirected_to lr11s_path
  end
end

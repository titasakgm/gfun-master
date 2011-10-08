require 'test_helper'

class Lr12sControllerTest < ActionController::TestCase
  setup do
    @lr12 = lr12s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr12s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr12" do
    assert_difference('Lr12.count') do
      post :create, :lr12 => @lr12.attributes
    end

    assert_redirected_to lr12_path(assigns(:lr12))
  end

  test "should show lr12" do
    get :show, :id => @lr12.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr12.to_param
    assert_response :success
  end

  test "should update lr12" do
    put :update, :id => @lr12.to_param, :lr12 => @lr12.attributes
    assert_redirected_to lr12_path(assigns(:lr12))
  end

  test "should destroy lr12" do
    assert_difference('Lr12.count', -1) do
      delete :destroy, :id => @lr12.to_param
    end

    assert_redirected_to lr12s_path
  end
end

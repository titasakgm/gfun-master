require 'test_helper'

class Lr14sControllerTest < ActionController::TestCase
  setup do
    @lr14 = lr14s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr14s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr14" do
    assert_difference('Lr14.count') do
      post :create, :lr14 => @lr14.attributes
    end

    assert_redirected_to lr14_path(assigns(:lr14))
  end

  test "should show lr14" do
    get :show, :id => @lr14.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr14.to_param
    assert_response :success
  end

  test "should update lr14" do
    put :update, :id => @lr14.to_param, :lr14 => @lr14.attributes
    assert_redirected_to lr14_path(assigns(:lr14))
  end

  test "should destroy lr14" do
    assert_difference('Lr14.count', -1) do
      delete :destroy, :id => @lr14.to_param
    end

    assert_redirected_to lr14s_path
  end
end

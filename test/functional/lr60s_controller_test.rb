require 'test_helper'

class Lr60sControllerTest < ActionController::TestCase
  setup do
    @lr60 = lr60s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr60s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr60" do
    assert_difference('Lr60.count') do
      post :create, :lr60 => @lr60.attributes
    end

    assert_redirected_to lr60_path(assigns(:lr60))
  end

  test "should show lr60" do
    get :show, :id => @lr60.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr60.to_param
    assert_response :success
  end

  test "should update lr60" do
    put :update, :id => @lr60.to_param, :lr60 => @lr60.attributes
    assert_redirected_to lr60_path(assigns(:lr60))
  end

  test "should destroy lr60" do
    assert_difference('Lr60.count', -1) do
      delete :destroy, :id => @lr60.to_param
    end

    assert_redirected_to lr60s_path
  end
end

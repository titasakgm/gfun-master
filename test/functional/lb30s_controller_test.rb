require 'test_helper'

class Lb30sControllerTest < ActionController::TestCase
  setup do
    @lb30 = lb30s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lb30s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lb30" do
    assert_difference('Lb30.count') do
      post :create, :lb30 => @lb30.attributes
    end

    assert_redirected_to lb30_path(assigns(:lb30))
  end

  test "should show lb30" do
    get :show, :id => @lb30.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lb30.to_param
    assert_response :success
  end

  test "should update lb30" do
    put :update, :id => @lb30.to_param, :lb30 => @lb30.attributes
    assert_redirected_to lb30_path(assigns(:lb30))
  end

  test "should destroy lb30" do
    assert_difference('Lb30.count', -1) do
      delete :destroy, :id => @lb30.to_param
    end

    assert_redirected_to lb30s_path
  end
end

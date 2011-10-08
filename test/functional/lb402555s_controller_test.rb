require 'test_helper'

class Lb402555sControllerTest < ActionController::TestCase
  setup do
    @lb402555 = lb402555s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lb402555s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lb402555" do
    assert_difference('Lb402555.count') do
      post :create, :lb402555 => @lb402555.attributes
    end

    assert_redirected_to lb402555_path(assigns(:lb402555))
  end

  test "should show lb402555" do
    get :show, :id => @lb402555.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lb402555.to_param
    assert_response :success
  end

  test "should update lb402555" do
    put :update, :id => @lb402555.to_param, :lb402555 => @lb402555.attributes
    assert_redirected_to lb402555_path(assigns(:lb402555))
  end

  test "should destroy lb402555" do
    assert_difference('Lb402555.count', -1) do
      delete :destroy, :id => @lb402555.to_param
    end

    assert_redirected_to lb402555s_path
  end
end

require 'test_helper'

class Lb40sControllerTest < ActionController::TestCase
  setup do
    @lb40 = lb40s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lb40s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lb40" do
    assert_difference('Lb40.count') do
      post :create, :lb40 => @lb40.attributes
    end

    assert_redirected_to lb40_path(assigns(:lb40))
  end

  test "should show lb40" do
    get :show, :id => @lb40.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lb40.to_param
    assert_response :success
  end

  test "should update lb40" do
    put :update, :id => @lb40.to_param, :lb40 => @lb40.attributes
    assert_redirected_to lb40_path(assigns(:lb40))
  end

  test "should destroy lb40" do
    assert_difference('Lb40.count', -1) do
      delete :destroy, :id => @lb40.to_param
    end

    assert_redirected_to lb40s_path
  end
end

require 'test_helper'

class Lb402556sControllerTest < ActionController::TestCase
  setup do
    @lb402556 = lb402556s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lb402556s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lb402556" do
    assert_difference('Lb402556.count') do
      post :create, :lb402556 => @lb402556.attributes
    end

    assert_redirected_to lb402556_path(assigns(:lb402556))
  end

  test "should show lb402556" do
    get :show, :id => @lb402556.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lb402556.to_param
    assert_response :success
  end

  test "should update lb402556" do
    put :update, :id => @lb402556.to_param, :lb402556 => @lb402556.attributes
    assert_redirected_to lb402556_path(assigns(:lb402556))
  end

  test "should destroy lb402556" do
    assert_difference('Lb402556.count', -1) do
      delete :destroy, :id => @lb402556.to_param
    end

    assert_redirected_to lb402556s_path
  end
end

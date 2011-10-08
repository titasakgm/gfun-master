require 'test_helper'

class Lb202556sControllerTest < ActionController::TestCase
  setup do
    @lb202556 = lb202556s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lb202556s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lb202556" do
    assert_difference('Lb202556.count') do
      post :create, :lb202556 => @lb202556.attributes
    end

    assert_redirected_to lb202556_path(assigns(:lb202556))
  end

  test "should show lb202556" do
    get :show, :id => @lb202556.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lb202556.to_param
    assert_response :success
  end

  test "should update lb202556" do
    put :update, :id => @lb202556.to_param, :lb202556 => @lb202556.attributes
    assert_redirected_to lb202556_path(assigns(:lb202556))
  end

  test "should destroy lb202556" do
    assert_difference('Lb202556.count', -1) do
      delete :destroy, :id => @lb202556.to_param
    end

    assert_redirected_to lb202556s_path
  end
end

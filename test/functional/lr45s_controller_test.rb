require 'test_helper'

class Lr45sControllerTest < ActionController::TestCase
  setup do
    @lr45 = lr45s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr45s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr45" do
    assert_difference('Lr45.count') do
      post :create, :lr45 => @lr45.attributes
    end

    assert_redirected_to lr45_path(assigns(:lr45))
  end

  test "should show lr45" do
    get :show, :id => @lr45.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr45.to_param
    assert_response :success
  end

  test "should update lr45" do
    put :update, :id => @lr45.to_param, :lr45 => @lr45.attributes
    assert_redirected_to lr45_path(assigns(:lr45))
  end

  test "should destroy lr45" do
    assert_difference('Lr45.count', -1) do
      delete :destroy, :id => @lr45.to_param
    end

    assert_redirected_to lr45s_path
  end
end

require 'test_helper'

class Lr13sControllerTest < ActionController::TestCase
  setup do
    @lr13 = lr13s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr13s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr13" do
    assert_difference('Lr13.count') do
      post :create, :lr13 => @lr13.attributes
    end

    assert_redirected_to lr13_path(assigns(:lr13))
  end

  test "should show lr13" do
    get :show, :id => @lr13.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr13.to_param
    assert_response :success
  end

  test "should update lr13" do
    put :update, :id => @lr13.to_param, :lr13 => @lr13.attributes
    assert_redirected_to lr13_path(assigns(:lr13))
  end

  test "should destroy lr13" do
    assert_difference('Lr13.count', -1) do
      delete :destroy, :id => @lr13.to_param
    end

    assert_redirected_to lr13s_path
  end
end

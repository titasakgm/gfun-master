require 'test_helper'

class Lr75sControllerTest < ActionController::TestCase
  setup do
    @lr75 = lr75s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr75s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr75" do
    assert_difference('Lr75.count') do
      post :create, :lr75 => @lr75.attributes
    end

    assert_redirected_to lr75_path(assigns(:lr75))
  end

  test "should show lr75" do
    get :show, :id => @lr75.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr75.to_param
    assert_response :success
  end

  test "should update lr75" do
    put :update, :id => @lr75.to_param, :lr75 => @lr75.attributes
    assert_redirected_to lr75_path(assigns(:lr75))
  end

  test "should destroy lr75" do
    assert_difference('Lr75.count', -1) do
      delete :destroy, :id => @lr75.to_param
    end

    assert_redirected_to lr75s_path
  end
end

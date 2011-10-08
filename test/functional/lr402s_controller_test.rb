require 'test_helper'

class Lr402sControllerTest < ActionController::TestCase
  setup do
    @lr402 = lr402s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr402s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr402" do
    assert_difference('Lr402.count') do
      post :create, :lr402 => @lr402.attributes
    end

    assert_redirected_to lr402_path(assigns(:lr402))
  end

  test "should show lr402" do
    get :show, :id => @lr402.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr402.to_param
    assert_response :success
  end

  test "should update lr402" do
    put :update, :id => @lr402.to_param, :lr402 => @lr402.attributes
    assert_redirected_to lr402_path(assigns(:lr402))
  end

  test "should destroy lr402" do
    assert_difference('Lr402.count', -1) do
      delete :destroy, :id => @lr402.to_param
    end

    assert_redirected_to lr402s_path
  end
end

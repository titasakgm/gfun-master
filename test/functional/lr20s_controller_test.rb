require 'test_helper'

class Lr20sControllerTest < ActionController::TestCase
  setup do
    @lr20 = lr20s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr20s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr20" do
    assert_difference('Lr20.count') do
      post :create, :lr20 => @lr20.attributes
    end

    assert_redirected_to lr20_path(assigns(:lr20))
  end

  test "should show lr20" do
    get :show, :id => @lr20.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr20.to_param
    assert_response :success
  end

  test "should update lr20" do
    put :update, :id => @lr20.to_param, :lr20 => @lr20.attributes
    assert_redirected_to lr20_path(assigns(:lr20))
  end

  test "should destroy lr20" do
    assert_difference('Lr20.count', -1) do
      delete :destroy, :id => @lr20.to_param
    end

    assert_redirected_to lr20s_path
  end
end

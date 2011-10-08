require 'test_helper'

class Lr70sControllerTest < ActionController::TestCase
  setup do
    @lr70 = lr70s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr70s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr70" do
    assert_difference('Lr70.count') do
      post :create, :lr70 => @lr70.attributes
    end

    assert_redirected_to lr70_path(assigns(:lr70))
  end

  test "should show lr70" do
    get :show, :id => @lr70.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr70.to_param
    assert_response :success
  end

  test "should update lr70" do
    put :update, :id => @lr70.to_param, :lr70 => @lr70.attributes
    assert_redirected_to lr70_path(assigns(:lr70))
  end

  test "should destroy lr70" do
    assert_difference('Lr70.count', -1) do
      delete :destroy, :id => @lr70.to_param
    end

    assert_redirected_to lr70s_path
  end
end

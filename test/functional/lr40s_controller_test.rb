require 'test_helper'

class Lr40sControllerTest < ActionController::TestCase
  setup do
    @lr40 = lr40s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr40s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr40" do
    assert_difference('Lr40.count') do
      post :create, :lr40 => @lr40.attributes
    end

    assert_redirected_to lr40_path(assigns(:lr40))
  end

  test "should show lr40" do
    get :show, :id => @lr40.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr40.to_param
    assert_response :success
  end

  test "should update lr40" do
    put :update, :id => @lr40.to_param, :lr40 => @lr40.attributes
    assert_redirected_to lr40_path(assigns(:lr40))
  end

  test "should destroy lr40" do
    assert_difference('Lr40.count', -1) do
      delete :destroy, :id => @lr40.to_param
    end

    assert_redirected_to lr40s_path
  end
end

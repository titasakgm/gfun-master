require 'test_helper'

class Lr65sControllerTest < ActionController::TestCase
  setup do
    @lr65 = lr65s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr65s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr65" do
    assert_difference('Lr65.count') do
      post :create, :lr65 => @lr65.attributes
    end

    assert_redirected_to lr65_path(assigns(:lr65))
  end

  test "should show lr65" do
    get :show, :id => @lr65.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr65.to_param
    assert_response :success
  end

  test "should update lr65" do
    put :update, :id => @lr65.to_param, :lr65 => @lr65.attributes
    assert_redirected_to lr65_path(assigns(:lr65))
  end

  test "should destroy lr65" do
    assert_difference('Lr65.count', -1) do
      delete :destroy, :id => @lr65.to_param
    end

    assert_redirected_to lr65s_path
  end
end

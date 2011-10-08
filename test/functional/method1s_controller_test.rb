require 'test_helper'

class Method1sControllerTest < ActionController::TestCase
  setup do
    @method1 = method1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:method1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create method1" do
    assert_difference('Method1.count') do
      post :create, :method1 => @method1.attributes
    end

    assert_redirected_to method1_path(assigns(:method1))
  end

  test "should show method1" do
    get :show, :id => @method1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @method1.to_param
    assert_response :success
  end

  test "should update method1" do
    put :update, :id => @method1.to_param, :method1 => @method1.attributes
    assert_redirected_to method1_path(assigns(:method1))
  end

  test "should destroy method1" do
    assert_difference('Method1.count', -1) do
      delete :destroy, :id => @method1.to_param
    end

    assert_redirected_to method1s_path
  end
end

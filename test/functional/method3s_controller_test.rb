require 'test_helper'

class Method3sControllerTest < ActionController::TestCase
  setup do
    @method3 = method3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:method3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create method3" do
    assert_difference('Method3.count') do
      post :create, :method3 => @method3.attributes
    end

    assert_redirected_to method3_path(assigns(:method3))
  end

  test "should show method3" do
    get :show, :id => @method3.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @method3.to_param
    assert_response :success
  end

  test "should update method3" do
    put :update, :id => @method3.to_param, :method3 => @method3.attributes
    assert_redirected_to method3_path(assigns(:method3))
  end

  test "should destroy method3" do
    assert_difference('Method3.count', -1) do
      delete :destroy, :id => @method3.to_param
    end

    assert_redirected_to method3s_path
  end
end

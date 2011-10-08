require 'test_helper'

class Method4sControllerTest < ActionController::TestCase
  setup do
    @method4 = method4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:method4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create method4" do
    assert_difference('Method4.count') do
      post :create, :method4 => @method4.attributes
    end

    assert_redirected_to method4_path(assigns(:method4))
  end

  test "should show method4" do
    get :show, :id => @method4.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @method4.to_param
    assert_response :success
  end

  test "should update method4" do
    put :update, :id => @method4.to_param, :method4 => @method4.attributes
    assert_redirected_to method4_path(assigns(:method4))
  end

  test "should destroy method4" do
    assert_difference('Method4.count', -1) do
      delete :destroy, :id => @method4.to_param
    end

    assert_redirected_to method4s_path
  end
end

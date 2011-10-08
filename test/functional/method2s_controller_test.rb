require 'test_helper'

class Method2sControllerTest < ActionController::TestCase
  setup do
    @method2 = method2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:method2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create method2" do
    assert_difference('Method2.count') do
      post :create, :method2 => @method2.attributes
    end

    assert_redirected_to method2_path(assigns(:method2))
  end

  test "should show method2" do
    get :show, :id => @method2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @method2.to_param
    assert_response :success
  end

  test "should update method2" do
    put :update, :id => @method2.to_param, :method2 => @method2.attributes
    assert_redirected_to method2_path(assigns(:method2))
  end

  test "should destroy method2" do
    assert_difference('Method2.count', -1) do
      delete :destroy, :id => @method2.to_param
    end

    assert_redirected_to method2s_path
  end
end

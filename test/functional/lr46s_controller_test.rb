require 'test_helper'

class Lr46sControllerTest < ActionController::TestCase
  setup do
    @lr46 = lr46s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr46s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr46" do
    assert_difference('Lr46.count') do
      post :create, :lr46 => @lr46.attributes
    end

    assert_redirected_to lr46_path(assigns(:lr46))
  end

  test "should show lr46" do
    get :show, :id => @lr46.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr46.to_param
    assert_response :success
  end

  test "should update lr46" do
    put :update, :id => @lr46.to_param, :lr46 => @lr46.attributes
    assert_redirected_to lr46_path(assigns(:lr46))
  end

  test "should destroy lr46" do
    assert_difference('Lr46.count', -1) do
      delete :destroy, :id => @lr46.to_param
    end

    assert_redirected_to lr46s_path
  end
end

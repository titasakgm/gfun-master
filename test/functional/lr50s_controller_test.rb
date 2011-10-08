require 'test_helper'

class Lr50sControllerTest < ActionController::TestCase
  setup do
    @lr50 = lr50s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr50s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr50" do
    assert_difference('Lr50.count') do
      post :create, :lr50 => @lr50.attributes
    end

    assert_redirected_to lr50_path(assigns(:lr50))
  end

  test "should show lr50" do
    get :show, :id => @lr50.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr50.to_param
    assert_response :success
  end

  test "should update lr50" do
    put :update, :id => @lr50.to_param, :lr50 => @lr50.attributes
    assert_redirected_to lr50_path(assigns(:lr50))
  end

  test "should destroy lr50" do
    assert_difference('Lr50.count', -1) do
      delete :destroy, :id => @lr50.to_param
    end

    assert_redirected_to lr50s_path
  end
end

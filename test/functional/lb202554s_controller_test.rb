require 'test_helper'

class Lb202554sControllerTest < ActionController::TestCase
  setup do
    @lb202554 = lb202554s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lb202554s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lb202554" do
    assert_difference('Lb202554.count') do
      post :create, :lb202554 => @lb202554.attributes
    end

    assert_redirected_to lb202554_path(assigns(:lb202554))
  end

  test "should show lb202554" do
    get :show, :id => @lb202554.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lb202554.to_param
    assert_response :success
  end

  test "should update lb202554" do
    put :update, :id => @lb202554.to_param, :lb202554 => @lb202554.attributes
    assert_redirected_to lb202554_path(assigns(:lb202554))
  end

  test "should destroy lb202554" do
    assert_difference('Lb202554.count', -1) do
      delete :destroy, :id => @lb202554.to_param
    end

    assert_redirected_to lb202554s_path
  end
end

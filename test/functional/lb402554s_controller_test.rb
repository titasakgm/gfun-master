require 'test_helper'

class Lb402554sControllerTest < ActionController::TestCase
  setup do
    @lb402554 = lb402554s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lb402554s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lb402554" do
    assert_difference('Lb402554.count') do
      post :create, :lb402554 => @lb402554.attributes
    end

    assert_redirected_to lb402554_path(assigns(:lb402554))
  end

  test "should show lb402554" do
    get :show, :id => @lb402554.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lb402554.to_param
    assert_response :success
  end

  test "should update lb402554" do
    put :update, :id => @lb402554.to_param, :lb402554 => @lb402554.attributes
    assert_redirected_to lb402554_path(assigns(:lb402554))
  end

  test "should destroy lb402554" do
    assert_difference('Lb402554.count', -1) do
      delete :destroy, :id => @lb402554.to_param
    end

    assert_redirected_to lb402554s_path
  end
end

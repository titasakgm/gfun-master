require 'test_helper'

class LrB40sControllerTest < ActionController::TestCase
  setup do
    @lr_b_40 = lr_b_40s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr_b_40s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr_b_40" do
    assert_difference('LrB40.count') do
      post :create, :lr_b_40 => @lr_b_40.attributes
    end

    assert_redirected_to lr_b_40_path(assigns(:lr_b_40))
  end

  test "should show lr_b_40" do
    get :show, :id => @lr_b_40.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr_b_40.to_param
    assert_response :success
  end

  test "should update lr_b_40" do
    put :update, :id => @lr_b_40.to_param, :lr_b_40 => @lr_b_40.attributes
    assert_redirected_to lr_b_40_path(assigns(:lr_b_40))
  end

  test "should destroy lr_b_40" do
    assert_difference('LrB40.count', -1) do
      delete :destroy, :id => @lr_b_40.to_param
    end

    assert_redirected_to lr_b_40s_path
  end
end

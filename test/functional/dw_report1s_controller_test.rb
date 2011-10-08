require 'test_helper'

class DwReport1sControllerTest < ActionController::TestCase
  setup do
    @dw_report1 = dw_report1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dw_report1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dw_report1" do
    assert_difference('DwReport1.count') do
      post :create, :dw_report1 => @dw_report1.attributes
    end

    assert_redirected_to dw_report1_path(assigns(:dw_report1))
  end

  test "should show dw_report1" do
    get :show, :id => @dw_report1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dw_report1.to_param
    assert_response :success
  end

  test "should update dw_report1" do
    put :update, :id => @dw_report1.to_param, :dw_report1 => @dw_report1.attributes
    assert_redirected_to dw_report1_path(assigns(:dw_report1))
  end

  test "should destroy dw_report1" do
    assert_difference('DwReport1.count', -1) do
      delete :destroy, :id => @dw_report1.to_param
    end

    assert_redirected_to dw_report1s_path
  end
end

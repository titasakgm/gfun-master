require 'test_helper'

class Tbl402554IsControllerTest < ActionController::TestCase
  setup do
    @tbl_40_2554_i = tbl_40_2554_is(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tbl_40_2554_is)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tbl_40_2554_i" do
    assert_difference('Tbl402554I.count') do
      post :create, :tbl_40_2554_i => @tbl_40_2554_i.attributes
    end

    assert_redirected_to tbl_40_2554_i_path(assigns(:tbl_40_2554_i))
  end

  test "should show tbl_40_2554_i" do
    get :show, :id => @tbl_40_2554_i.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tbl_40_2554_i.to_param
    assert_response :success
  end

  test "should update tbl_40_2554_i" do
    put :update, :id => @tbl_40_2554_i.to_param, :tbl_40_2554_i => @tbl_40_2554_i.attributes
    assert_redirected_to tbl_40_2554_i_path(assigns(:tbl_40_2554_i))
  end

  test "should destroy tbl_40_2554_i" do
    assert_difference('Tbl402554I.count', -1) do
      delete :destroy, :id => @tbl_40_2554_i.to_param
    end

    assert_redirected_to tbl_40_2554_is_path
  end
end

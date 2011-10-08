require 'test_helper'

class BudgetSrcsControllerTest < ActionController::TestCase
  setup do
    @budget_src = budget_srcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:budget_srcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create budget_src" do
    assert_difference('BudgetSrc.count') do
      post :create, :budget_src => @budget_src.attributes
    end

    assert_redirected_to budget_src_path(assigns(:budget_src))
  end

  test "should show budget_src" do
    get :show, :id => @budget_src.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @budget_src.to_param
    assert_response :success
  end

  test "should update budget_src" do
    put :update, :id => @budget_src.to_param, :budget_src => @budget_src.attributes
    assert_redirected_to budget_src_path(assigns(:budget_src))
  end

  test "should destroy budget_src" do
    assert_difference('BudgetSrc.count', -1) do
      delete :destroy, :id => @budget_src.to_param
    end

    assert_redirected_to budget_srcs_path
  end
end

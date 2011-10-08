require 'test_helper'

class Project2BudgetSrcsControllerTest < ActionController::TestCase
  setup do
    @project2_budget_src = project2_budget_srcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project2_budget_srcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project2_budget_src" do
    assert_difference('Project2BudgetSrc.count') do
      post :create, :project2_budget_src => @project2_budget_src.attributes
    end

    assert_redirected_to project2_budget_src_path(assigns(:project2_budget_src))
  end

  test "should show project2_budget_src" do
    get :show, :id => @project2_budget_src.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @project2_budget_src.to_param
    assert_response :success
  end

  test "should update project2_budget_src" do
    put :update, :id => @project2_budget_src.to_param, :project2_budget_src => @project2_budget_src.attributes
    assert_redirected_to project2_budget_src_path(assigns(:project2_budget_src))
  end

  test "should destroy project2_budget_src" do
    assert_difference('Project2BudgetSrc.count', -1) do
      delete :destroy, :id => @project2_budget_src.to_param
    end

    assert_redirected_to project2_budget_srcs_path
  end
end

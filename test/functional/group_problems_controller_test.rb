require 'test_helper'

class GroupProblemsControllerTest < ActionController::TestCase
  setup do
    @group_problem = group_problems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_problems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_problem" do
    assert_difference('GroupProblem.count') do
      post :create, :group_problem => @group_problem.attributes
    end

    assert_redirected_to group_problem_path(assigns(:group_problem))
  end

  test "should show group_problem" do
    get :show, :id => @group_problem.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @group_problem.to_param
    assert_response :success
  end

  test "should update group_problem" do
    put :update, :id => @group_problem.to_param, :group_problem => @group_problem.attributes
    assert_redirected_to group_problem_path(assigns(:group_problem))
  end

  test "should destroy group_problem" do
    assert_difference('GroupProblem.count', -1) do
      delete :destroy, :id => @group_problem.to_param
    end

    assert_redirected_to group_problems_path
  end
end

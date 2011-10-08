require 'test_helper'

class SocialProblemsControllerTest < ActionController::TestCase
  setup do
    @social_problem = social_problems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:social_problems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create social_problem" do
    assert_difference('SocialProblem.count') do
      post :create, :social_problem => @social_problem.attributes
    end

    assert_redirected_to social_problem_path(assigns(:social_problem))
  end

  test "should show social_problem" do
    get :show, :id => @social_problem.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @social_problem.to_param
    assert_response :success
  end

  test "should update social_problem" do
    put :update, :id => @social_problem.to_param, :social_problem => @social_problem.attributes
    assert_redirected_to social_problem_path(assigns(:social_problem))
  end

  test "should destroy social_problem" do
    assert_difference('SocialProblem.count', -1) do
      delete :destroy, :id => @social_problem.to_param
    end

    assert_redirected_to social_problems_path
  end
end

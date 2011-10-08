require 'test_helper'

class YouthProblemsControllerTest < ActionController::TestCase
  setup do
    @youth_problem = youth_problems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:youth_problems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create youth_problem" do
    assert_difference('YouthProblem.count') do
      post :create, :youth_problem => @youth_problem.attributes
    end

    assert_redirected_to youth_problem_path(assigns(:youth_problem))
  end

  test "should show youth_problem" do
    get :show, :id => @youth_problem.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @youth_problem.to_param
    assert_response :success
  end

  test "should update youth_problem" do
    put :update, :id => @youth_problem.to_param, :youth_problem => @youth_problem.attributes
    assert_redirected_to youth_problem_path(assigns(:youth_problem))
  end

  test "should destroy youth_problem" do
    assert_difference('YouthProblem.count', -1) do
      delete :destroy, :id => @youth_problem.to_param
    end

    assert_redirected_to youth_problems_path
  end
end

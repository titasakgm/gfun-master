require 'test_helper'

class Project2LeadersControllerTest < ActionController::TestCase
  setup do
    @project2_leader = project2_leaders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project2_leaders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project2_leader" do
    assert_difference('Project2Leader.count') do
      post :create, :project2_leader => @project2_leader.attributes
    end

    assert_redirected_to project2_leader_path(assigns(:project2_leader))
  end

  test "should show project2_leader" do
    get :show, :id => @project2_leader.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @project2_leader.to_param
    assert_response :success
  end

  test "should update project2_leader" do
    put :update, :id => @project2_leader.to_param, :project2_leader => @project2_leader.attributes
    assert_redirected_to project2_leader_path(assigns(:project2_leader))
  end

  test "should destroy project2_leader" do
    assert_difference('Project2Leader.count', -1) do
      delete :destroy, :id => @project2_leader.to_param
    end

    assert_redirected_to project2_leaders_path
  end
end

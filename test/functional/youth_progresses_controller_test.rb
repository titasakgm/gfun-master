require 'test_helper'

class YouthProgressesControllerTest < ActionController::TestCase
  setup do
    @youth_progress = youth_progresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:youth_progresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create youth_progress" do
    assert_difference('YouthProgress.count') do
      post :create, :youth_progress => @youth_progress.attributes
    end

    assert_redirected_to youth_progress_path(assigns(:youth_progress))
  end

  test "should show youth_progress" do
    get :show, :id => @youth_progress.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @youth_progress.to_param
    assert_response :success
  end

  test "should update youth_progress" do
    put :update, :id => @youth_progress.to_param, :youth_progress => @youth_progress.attributes
    assert_redirected_to youth_progress_path(assigns(:youth_progress))
  end

  test "should destroy youth_progress" do
    assert_difference('YouthProgress.count', -1) do
      delete :destroy, :id => @youth_progress.to_param
    end

    assert_redirected_to youth_progresses_path
  end
end

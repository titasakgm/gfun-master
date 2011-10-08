require 'test_helper'

class ThreatTypesControllerTest < ActionController::TestCase
  setup do
    @threat_type = threat_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:threat_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create threat_type" do
    assert_difference('ThreatType.count') do
      post :create, :threat_type => @threat_type.attributes
    end

    assert_redirected_to threat_type_path(assigns(:threat_type))
  end

  test "should show threat_type" do
    get :show, :id => @threat_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @threat_type.to_param
    assert_response :success
  end

  test "should update threat_type" do
    put :update, :id => @threat_type.to_param, :threat_type => @threat_type.attributes
    assert_redirected_to threat_type_path(assigns(:threat_type))
  end

  test "should destroy threat_type" do
    assert_difference('ThreatType.count', -1) do
      delete :destroy, :id => @threat_type.to_param
    end

    assert_redirected_to threat_types_path
  end
end

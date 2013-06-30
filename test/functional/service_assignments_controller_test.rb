require 'test_helper'

class ServiceAssignmentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_assignment" do
    assert_difference('ServiceAssignment.count') do
      post :create, :service_assignment => { }
    end

    assert_redirected_to service_assignment_path(assigns(:service_assignment))
  end

  test "should show service_assignment" do
    get :show, :id => service_assignments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => service_assignments(:one).to_param
    assert_response :success
  end

  test "should update service_assignment" do
    put :update, :id => service_assignments(:one).to_param, :service_assignment => { }
    assert_redirected_to service_assignment_path(assigns(:service_assignment))
  end

  test "should destroy service_assignment" do
    assert_difference('ServiceAssignment.count', -1) do
      delete :destroy, :id => service_assignments(:one).to_param
    end

    assert_redirected_to service_assignments_path
  end
end

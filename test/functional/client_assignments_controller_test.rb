require 'test_helper'

class ClientAssignmentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_assignment" do
    assert_difference('ClientAssignment.count') do
      post :create, :client_assignment => { }
    end

    assert_redirected_to client_assignment_path(assigns(:client_assignment))
  end

  test "should show client_assignment" do
    get :show, :id => client_assignments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => client_assignments(:one).to_param
    assert_response :success
  end

  test "should update client_assignment" do
    put :update, :id => client_assignments(:one).to_param, :client_assignment => { }
    assert_redirected_to client_assignment_path(assigns(:client_assignment))
  end

  test "should destroy client_assignment" do
    assert_difference('ClientAssignment.count', -1) do
      delete :destroy, :id => client_assignments(:one).to_param
    end

    assert_redirected_to client_assignments_path
  end
end

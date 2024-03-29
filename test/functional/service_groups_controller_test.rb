require 'test_helper'

class ServiceGroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_group" do
    assert_difference('ServiceGroup.count') do
      post :create, :service_group => { }
    end

    assert_redirected_to service_group_path(assigns(:service_group))
  end

  test "should show service_group" do
    get :show, :id => service_groups(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => service_groups(:one).to_param
    assert_response :success
  end

  test "should update service_group" do
    put :update, :id => service_groups(:one).to_param, :service_group => { }
    assert_redirected_to service_group_path(assigns(:service_group))
  end

  test "should destroy service_group" do
    assert_difference('ServiceGroup.count', -1) do
      delete :destroy, :id => service_groups(:one).to_param
    end

    assert_redirected_to service_groups_path
  end
end

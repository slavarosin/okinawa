require 'test_helper'

class ComponentGroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:component_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create component_group" do
    assert_difference('ComponentGroup.count') do
      post :create, :component_group => { }
    end

    assert_redirected_to component_group_path(assigns(:component_group))
  end

  test "should show component_group" do
    get :show, :id => component_groups(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => component_groups(:one).to_param
    assert_response :success
  end

  test "should update component_group" do
    put :update, :id => component_groups(:one).to_param, :component_group => { }
    assert_redirected_to component_group_path(assigns(:component_group))
  end

  test "should destroy component_group" do
    assert_difference('ComponentGroup.count', -1) do
      delete :destroy, :id => component_groups(:one).to_param
    end

    assert_redirected_to component_groups_path
  end
end

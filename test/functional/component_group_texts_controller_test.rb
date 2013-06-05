require 'test_helper'

class ComponentGroupTextsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:component_group_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create component_group_text" do
    assert_difference('ComponentGroupText.count') do
      post :create, :component_group_text => { }
    end

    assert_redirected_to component_group_text_path(assigns(:component_group_text))
  end

  test "should show component_group_text" do
    get :show, :id => component_group_texts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => component_group_texts(:one).to_param
    assert_response :success
  end

  test "should update component_group_text" do
    put :update, :id => component_group_texts(:one).to_param, :component_group_text => { }
    assert_redirected_to component_group_text_path(assigns(:component_group_text))
  end

  test "should destroy component_group_text" do
    assert_difference('ComponentGroupText.count', -1) do
      delete :destroy, :id => component_group_texts(:one).to_param
    end

    assert_redirected_to component_group_texts_path
  end
end

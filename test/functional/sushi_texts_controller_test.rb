require 'test_helper'

class SushiTextsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sushi_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sushi_text" do
    assert_difference('SushiText.count') do
      post :create, :sushi_text => { }
    end

    assert_redirected_to sushi_text_path(assigns(:sushi_text))
  end

  test "should show sushi_text" do
    get :show, :id => sushi_texts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sushi_texts(:one).to_param
    assert_response :success
  end

  test "should update sushi_text" do
    put :update, :id => sushi_texts(:one).to_param, :sushi_text => { }
    assert_redirected_to sushi_text_path(assigns(:sushi_text))
  end

  test "should destroy sushi_text" do
    assert_difference('SushiText.count', -1) do
      delete :destroy, :id => sushi_texts(:one).to_param
    end

    assert_redirected_to sushi_texts_path
  end
end

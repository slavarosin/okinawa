require 'test_helper'

class SushiImagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sushi_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sushi_image" do
    assert_difference('SushiImage.count') do
      post :create, :sushi_image => { }
    end

    assert_redirected_to sushi_image_path(assigns(:sushi_image))
  end

  test "should show sushi_image" do
    get :show, :id => sushi_images(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sushi_images(:one).to_param
    assert_response :success
  end

  test "should update sushi_image" do
    put :update, :id => sushi_images(:one).to_param, :sushi_image => { }
    assert_redirected_to sushi_image_path(assigns(:sushi_image))
  end

  test "should destroy sushi_image" do
    assert_difference('SushiImage.count', -1) do
      delete :destroy, :id => sushi_images(:one).to_param
    end

    assert_redirected_to sushi_images_path
  end
end

require 'test_helper'

class DetentionsControllerTest < ActionController::TestCase
  setup do
    @detention = detentions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detentions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detention" do
    assert_difference('Detention.count') do
      post :create, :detention => @detention.attributes
    end

    assert_redirected_to detention_path(assigns(:detention))
  end

  test "should show detention" do
    get :show, :id => @detention.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @detention.to_param
    assert_response :success
  end

  test "should update detention" do
    put :update, :id => @detention.to_param, :detention => @detention.attributes
    assert_redirected_to detention_path(assigns(:detention))
  end

  test "should destroy detention" do
    assert_difference('Detention.count', -1) do
      delete :destroy, :id => @detention.to_param
    end

    assert_redirected_to detentions_path
  end
end

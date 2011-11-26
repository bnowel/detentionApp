require 'test_helper'

class ConsequencesControllerTest < ActionController::TestCase
  setup do
    @consequence = consequences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consequences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consequence" do
    assert_difference('Consequence.count') do
      post :create, :consequence => @consequence.attributes
    end

    assert_redirected_to consequence_path(assigns(:consequence))
  end

  test "should show consequence" do
    get :show, :id => @consequence.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @consequence.to_param
    assert_response :success
  end

  test "should update consequence" do
    put :update, :id => @consequence.to_param, :consequence => @consequence.attributes
    assert_redirected_to consequence_path(assigns(:consequence))
  end

  test "should destroy consequence" do
    assert_difference('Consequence.count', -1) do
      delete :destroy, :id => @consequence.to_param
    end

    assert_redirected_to consequences_path
  end
end

require 'test_helper'

class CommotsControllerTest < ActionController::TestCase
  setup do
    @commot = commots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commot" do
    assert_difference('Commot.count') do
      post :create, commot: { body: @commot.body, post_id: @commot.post_id }
    end

    assert_redirected_to commot_path(assigns(:commot))
  end

  test "should show commot" do
    get :show, id: @commot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commot
    assert_response :success
  end

  test "should update commot" do
    patch :update, id: @commot, commot: { body: @commot.body, post_id: @commot.post_id }
    assert_redirected_to commot_path(assigns(:commot))
  end

  test "should destroy commot" do
    assert_difference('Commot.count', -1) do
      delete :destroy, id: @commot
    end

    assert_redirected_to commots_path
  end
end

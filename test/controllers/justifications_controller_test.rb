require 'test_helper'

class JustificationsControllerTest < ActionController::TestCase
  setup do
    @justification = justifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:justifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create justification" do
    assert_difference('Justification.count') do
      post :create, justification: { approved: @justification.approved, branch: @justification.branch, justId: @justification.justId, repo: @justification.repo }
    end

    assert_redirected_to justification_path(assigns(:justification))
  end

  test "should show justification" do
    get :show, id: @justification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @justification
    assert_response :success
  end

  test "should update justification" do
    patch :update, id: @justification, justification: { approved: @justification.approved, branch: @justification.branch, justId: @justification.justId, repo: @justification.repo }
    assert_redirected_to justification_path(assigns(:justification))
  end

  test "should destroy justification" do
    assert_difference('Justification.count', -1) do
      delete :destroy, id: @justification
    end

    assert_redirected_to justifications_path
  end
end

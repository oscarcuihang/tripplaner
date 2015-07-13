require 'test_helper'

class TripplansControllerTest < ActionController::TestCase
  setup do
    @tripplan = tripplans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tripplans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tripplan" do
    assert_difference('Tripplan.count') do
      post :create, tripplan: { imagebinary: @tripplan.imagebinary, imagelink: @tripplan.imagelink, tripname: @tripplan.tripname, user_id: @tripplan.user_id }
    end

    assert_redirected_to tripplan_path(assigns(:tripplan))
  end

  test "should show tripplan" do
    get :show, id: @tripplan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tripplan
    assert_response :success
  end

  test "should update tripplan" do
    patch :update, id: @tripplan, tripplan: { imagebinary: @tripplan.imagebinary, imagelink: @tripplan.imagelink, tripname: @tripplan.tripname, user_id: @tripplan.user_id }
    assert_redirected_to tripplan_path(assigns(:tripplan))
  end

  test "should destroy tripplan" do
    assert_difference('Tripplan.count', -1) do
      delete :destroy, id: @tripplan
    end

    assert_redirected_to tripplans_path
  end
end

require 'test_helper'

class ArmiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:armies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create army" do
    assert_difference('Army.count') do
      post :create, :army => { }
    end

    assert_redirected_to army_path(assigns(:army))
  end

  test "should show army" do
    get :show, :id => armies(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => armies(:one).id
    assert_response :success
  end

  test "should update army" do
    put :update, :id => armies(:one).id, :army => { }
    assert_redirected_to army_path(assigns(:army))
  end

  test "should destroy army" do
    assert_difference('Army.count', -1) do
      delete :destroy, :id => armies(:one).id
    end

    assert_redirected_to armies_path
  end
end

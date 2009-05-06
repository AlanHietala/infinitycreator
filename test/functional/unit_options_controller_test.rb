require 'test_helper'

class UnitOptionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unit_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unit_options" do
    assert_difference('UnitOptions.count') do
      post :create, :unit_options => { }
    end

    assert_redirected_to unit_options_path(assigns(:unit_options))
  end

  test "should show unit_options" do
    get :show, :id => unit_options(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => unit_options(:one).id
    assert_response :success
  end

  test "should update unit_options" do
    put :update, :id => unit_options(:one).id, :unit_options => { }
    assert_redirected_to unit_options_path(assigns(:unit_options))
  end

  test "should destroy unit_options" do
    assert_difference('UnitOptions.count', -1) do
      delete :destroy, :id => unit_options(:one).id
    end

    assert_redirected_to unit_options_path
  end
end

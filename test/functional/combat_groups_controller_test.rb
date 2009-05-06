require 'test_helper'

class CombatGroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:combat_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create combat_group" do
    assert_difference('CombatGroup.count') do
      post :create, :combat_group => { }
    end

    assert_redirected_to combat_group_path(assigns(:combat_group))
  end

  test "should show combat_group" do
    get :show, :id => combat_groups(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => combat_groups(:one).id
    assert_response :success
  end

  test "should update combat_group" do
    put :update, :id => combat_groups(:one).id, :combat_group => { }
    assert_redirected_to combat_group_path(assigns(:combat_group))
  end

  test "should destroy combat_group" do
    assert_difference('CombatGroup.count', -1) do
      delete :destroy, :id => combat_groups(:one).id
    end

    assert_redirected_to combat_groups_path
  end
end

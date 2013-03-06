require 'test_helper'

class CombatGroupUnitsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:combat_group_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create combat_group_unit" do
    assert_difference('CombatGroupUnit.count') do
      post :create, :combat_group_unit => { }
    end

    assert_redirected_to combat_group_unit_path(assigns(:combat_group_unit))
  end

  test "should show combat_group_unit" do
    get :show, :id => combat_group_units(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => combat_group_units(:one).id
    assert_response :success
  end

  test "should update combat_group_unit" do
    put :update, :id => combat_group_units(:one).id, :combat_group_unit => { }
    assert_redirected_to combat_group_unit_path(assigns(:combat_group_unit))
  end

  test "should destroy combat_group_unit" do
    assert_difference('CombatGroupUnit.count', -1) do
      delete :destroy, :id => combat_group_units(:one).id
    end

    assert_redirected_to combat_group_units_path
  end
end

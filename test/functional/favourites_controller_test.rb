require 'test_helper'

class FavouritesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favourites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favourites" do
    assert_difference('Favourites.count') do
      post :create, :favourites => { }
    end

    assert_redirected_to favourites_path(assigns(:favourites))
  end

  test "should show favourites" do
    get :show, :id => favourites(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => favourites(:one).to_param
    assert_response :success
  end

  test "should update favourites" do
    put :update, :id => favourites(:one).to_param, :favourites => { }
    assert_redirected_to favourites_path(assigns(:favourites))
  end

  test "should destroy favourites" do
    assert_difference('Favourites.count', -1) do
      delete :destroy, :id => favourites(:one).to_param
    end

    assert_redirected_to favourites_path
  end
end

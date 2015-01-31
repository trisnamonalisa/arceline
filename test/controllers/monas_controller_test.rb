require 'test_helper'

class MonasControllerTest < ActionController::TestCase
  setup do
    @mona = monas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mona" do
    assert_difference('Mona.count') do
      post :create, mona: {  }
    end

    assert_redirected_to mona_path(assigns(:mona))
  end

  test "should show mona" do
    get :show, id: @mona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mona
    assert_response :success
  end

  test "should update mona" do
    patch :update, id: @mona, mona: {  }
    assert_redirected_to mona_path(assigns(:mona))
  end

  test "should destroy mona" do
    assert_difference('Mona.count', -1) do
      delete :destroy, id: @mona
    end

    assert_redirected_to monas_path
  end
end

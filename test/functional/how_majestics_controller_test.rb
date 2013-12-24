require 'test_helper'

class HowMajesticsControllerTest < ActionController::TestCase
  setup do
    @how_majestic = how_majestics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:how_majestics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create how_majestic" do
    assert_difference('HowMajestic.count') do
      post :create, how_majestic: { message: @how_majestic.message, posx: @how_majestic.posx, posy: @how_majestic.posy }
    end

    assert_redirected_to how_majestic_path(assigns(:how_majestic))
  end

  test "should show how_majestic" do
    get :show, id: @how_majestic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @how_majestic
    assert_response :success
  end

  test "should update how_majestic" do
    put :update, id: @how_majestic, how_majestic: { message: @how_majestic.message, posx: @how_majestic.posx, posy: @how_majestic.posy }
    assert_redirected_to how_majestic_path(assigns(:how_majestic))
  end

  test "should destroy how_majestic" do
    assert_difference('HowMajestic.count', -1) do
      delete :destroy, id: @how_majestic
    end

    assert_redirected_to how_majestics_path
  end
end

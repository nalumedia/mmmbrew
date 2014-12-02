require 'test_helper'

class BrewlinksControllerTest < ActionController::TestCase
  setup do
    @brewlink = brewlinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brewlinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brewlink" do
    assert_difference('Brewlink.count') do
      post :create, brewlink: { brewlink_description: @brewlink.brewlink_description, brewlink_name: @brewlink.brewlink_name, brewlink_url: @brewlink.brewlink_url }
    end

    assert_redirected_to brewlink_path(assigns(:brewlink))
  end

  test "should show brewlink" do
    get :show, id: @brewlink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brewlink
    assert_response :success
  end

  test "should update brewlink" do
    patch :update, id: @brewlink, brewlink: { brewlink_description: @brewlink.brewlink_description, brewlink_name: @brewlink.brewlink_name, brewlink_url: @brewlink.brewlink_url }
    assert_redirected_to brewlink_path(assigns(:brewlink))
  end

  test "should destroy brewlink" do
    assert_difference('Brewlink.count', -1) do
      delete :destroy, id: @brewlink
    end

    assert_redirected_to brewlinks_path
  end
end

require 'test_helper'

class BreweriesControllerTest < ActionController::TestCase
  setup do
    @brewery = breweries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:breweries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brewery" do
    assert_difference('Brewery.count') do
      post :create, brewery: { brewery_city: @brewery.brewery_city, brewery_description: @brewery.brewery_description, brewery_name: @brewery.brewery_name, brewery_phone: @brewery.brewery_phone, brewery_shortdescription: @brewery.brewery_shortdescription, brewery_state: @brewery.brewery_state, brewery_street: @brewery.brewery_street, brewery_www: @brewery.brewery_www, brewery_zip: @brewery.brewery_zip }
    end

    assert_redirected_to brewery_path(assigns(:brewery))
  end

  test "should show brewery" do
    get :show, id: @brewery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brewery
    assert_response :success
  end

  test "should update brewery" do
    patch :update, id: @brewery, brewery: { brewery_city: @brewery.brewery_city, brewery_description: @brewery.brewery_description, brewery_name: @brewery.brewery_name, brewery_phone: @brewery.brewery_phone, brewery_shortdescription: @brewery.brewery_shortdescription, brewery_state: @brewery.brewery_state, brewery_street: @brewery.brewery_street, brewery_www: @brewery.brewery_www, brewery_zip: @brewery.brewery_zip }
    assert_redirected_to brewery_path(assigns(:brewery))
  end

  test "should destroy brewery" do
    assert_difference('Brewery.count', -1) do
      delete :destroy, id: @brewery
    end

    assert_redirected_to breweries_path
  end
end

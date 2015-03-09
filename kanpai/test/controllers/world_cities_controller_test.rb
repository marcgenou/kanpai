require 'test_helper'

class WorldCitiesControllerTest < ActionController::TestCase
  setup do
    @world_city = world_cities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:world_cities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create world_city" do
    assert_difference('WorldCity.count') do
      post :create, world_city: { accentcity: @world_city.accentcity, city: @world_city.city, country: @world_city.country, latitude: @world_city.latitude, longitude: @world_city.longitude, population: @world_city.population, region: @world_city.region }
    end

    assert_redirected_to world_city_path(assigns(:world_city))
  end

  test "should show world_city" do
    get :show, id: @world_city
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @world_city
    assert_response :success
  end

  test "should update world_city" do
    patch :update, id: @world_city, world_city: { accentcity: @world_city.accentcity, city: @world_city.city, country: @world_city.country, latitude: @world_city.latitude, longitude: @world_city.longitude, population: @world_city.population, region: @world_city.region }
    assert_redirected_to world_city_path(assigns(:world_city))
  end

  test "should destroy world_city" do
    assert_difference('WorldCity.count', -1) do
      delete :destroy, id: @world_city
    end

    assert_redirected_to world_cities_path
  end
end

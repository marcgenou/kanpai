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
      post :create, world_city: { admin1_code: @world_city.admin1_code, admin2_code: @world_city.admin2_code, admin3_code: @world_city.admin3_code, admin4_code: @world_city.admin4_code, alternatenames: @world_city.alternatenames, asciiname: @world_city.asciiname, cc2: @world_city.cc2, country_code: @world_city.country_code, dem: @world_city.dem, elevation: @world_city.elevation, feature_class: @world_city.feature_class, feature_code: @world_city.feature_code, geonameid: @world_city.geonameid, latitude: @world_city.latitude, longitude: @world_city.longitude, modification_date: @world_city.modification_date, name: @world_city.name, population: @world_city.population, timezone: @world_city.timezone }
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
    patch :update, id: @world_city, world_city: { admin1_code: @world_city.admin1_code, admin2_code: @world_city.admin2_code, admin3_code: @world_city.admin3_code, admin4_code: @world_city.admin4_code, alternatenames: @world_city.alternatenames, asciiname: @world_city.asciiname, cc2: @world_city.cc2, country_code: @world_city.country_code, dem: @world_city.dem, elevation: @world_city.elevation, feature_class: @world_city.feature_class, feature_code: @world_city.feature_code, geonameid: @world_city.geonameid, latitude: @world_city.latitude, longitude: @world_city.longitude, modification_date: @world_city.modification_date, name: @world_city.name, population: @world_city.population, timezone: @world_city.timezone }
    assert_redirected_to world_city_path(assigns(:world_city))
  end

  test "should destroy world_city" do
    assert_difference('WorldCity.count', -1) do
      delete :destroy, id: @world_city
    end

    assert_redirected_to world_cities_path
  end
end

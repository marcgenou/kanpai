class WorldCitiesController < ApplicationController
  before_action :set_world_city, only: [:show, :edit, :update, :destroy]

  # GET /world_cities
  # GET /world_cities.json
  def index
    @world_cities = WorldCity.all
  end

  # GET /world_cities/1
  # GET /world_cities/1.json
  def show
  end

  # GET /world_cities/new
  def new
    @world_city = WorldCity.new
  end

  # GET /world_cities/1/edit
  def edit
  end

  # POST /world_cities
  # POST /world_cities.json
  def create
    @world_city = WorldCity.new(world_city_params)

    respond_to do |format|
      if @world_city.save
        format.html { redirect_to @world_city, notice: 'World city was successfully created.' }
        format.json { render :show, status: :created, location: @world_city }
      else
        format.html { render :new }
        format.json { render json: @world_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /world_cities/1
  # PATCH/PUT /world_cities/1.json
  def update
    respond_to do |format|
      if @world_city.update(world_city_params)
        format.html { redirect_to @world_city, notice: 'World city was successfully updated.' }
        format.json { render :show, status: :ok, location: @world_city }
      else
        format.html { render :edit }
        format.json { render json: @world_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /world_cities/1
  # DELETE /world_cities/1.json
  def destroy
    @world_city.destroy
    respond_to do |format|
      format.html { redirect_to world_cities_url, notice: 'World city was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_world_city
      @world_city = WorldCity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def world_city_params
      params.require(:world_city).permit(:geonameid, :name, :asciiname, :alternatenames, :latitude, :longitude, :feature_class, :feature_code, :country_code, :cc2, :admin1_code, :admin2_code, :admin3_code, :admin4_code, :population, :elevation, :dem, :timezone, :modification_date)
    end
end

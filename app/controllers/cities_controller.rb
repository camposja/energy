class CitiesController < ApplicationController
  before_action :authenticate!, except: [:index]

  def new_or_create
    city_name = params[:city_name]

    @city = City.where("city_name ilike ?", "%#{city_name}%").first
    if city_name.present? && @city
      redirect_to @city
    else
      redirect_to new_city_path
    end
  end

  # GET /cities
  def index
    @cities = City.all
  end

  # GET /cities/1
  def show
    @city = City.find(params[:id])
  end

  # GET /cities/new
  def new
    @city = City.new
  end

  # GET /cities/1/edit
  def edit
    @city = City.find(params[:id])
  end

  # POST /cities
  def create
    @city = City.new(city_params)

    if @city.save
      redirect_to @city, notice: 'City was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cities/1
  def update
    @city = City.find(params[:id])
    if @city.update(city_params)
      redirect_to @city, notice: 'City was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cities/1
  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to cities_url, notice: 'City was successfully destroyed.'
  end

  def index
    # @cities = City.all
    @cities = City.page(params[:page]).per(9).order('city_name')
  end

  private

  # Only allow a trusted parameter "white list" through.
  def city_params
    params.require(:city).permit(:city_name, :state, :us_city, :population, :one_hundred_pct_by, :co2_emissions_perannum, :wind, :solar, :other_energy_source, :image)
  end
end

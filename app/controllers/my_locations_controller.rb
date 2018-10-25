class MyLocationsController < ApplicationController
  before_action :set_my_location, only: [:show, :edit, :update, :destroy]

  # GET /my_locations
  # GET /my_locations.json
  def index
    @my_locations = MyLocation.all
  end

  # GET /my_locations/1
  # GET /my_locations/1.json
  def show
  end

  # GET /my_locations/new
  def new
    @my_location = MyLocation.new
  end

  # GET /my_locations/1/edit
  def edit
  end

  # POST /my_locations
  # POST /my_locations.json
  def create
    @my_location = MyLocation.new(my_location_params)

    respond_to do |format|
      if @my_location.save
        format.html { redirect_to @my_location, notice: 'My location was successfully created.' }
        format.json { render :show, status: :created, location: @my_location }
      else
        format.html { render :new }
        format.json { render json: @my_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_locations/1
  # PATCH/PUT /my_locations/1.json
  def update
    respond_to do |format|
      if @my_location.update(my_location_params)
        format.html { redirect_to @my_location, notice: 'My location was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_location }
      else
        format.html { render :edit }
        format.json { render json: @my_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_locations/1
  # DELETE /my_locations/1.json
  def destroy
    @my_location.destroy
    respond_to do |format|
      format.html { redirect_to my_locations_url, notice: 'My location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_location
      @my_location = MyLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_location_params
      params.require(:my_location).permit(:lon, :lat)
    end
end

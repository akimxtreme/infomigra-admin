class CurrentSituationCountriesController < ApplicationController
  before_action :set_current_situation_country, only: [:show, :edit, :update, :destroy]

  # GET /current_situation_countries
  # GET /current_situation_countries.json
  def index
    @current_situation_countries = CurrentSituationCountry.all
  end

  # GET /current_situation_countries/1
  # GET /current_situation_countries/1.json
  def show
  end

  # GET /current_situation_countries/new
  def new
    @current_situation_country = CurrentSituationCountry.new
  end

  # GET /current_situation_countries/1/edit
  def edit
  end

  # POST /current_situation_countries
  # POST /current_situation_countries.json
  def create
    @current_situation_country = CurrentSituationCountry.new(current_situation_country_params)

    respond_to do |format|
      if @current_situation_country.save
        format.html { redirect_to @current_situation_country, notice: 'Current situation country was successfully created.' }
        format.json { render :show, status: :created, location: @current_situation_country }
      else
        format.html { render :new }
        format.json { render json: @current_situation_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_situation_countries/1
  # PATCH/PUT /current_situation_countries/1.json
  def update
    respond_to do |format|
      if @current_situation_country.update(current_situation_country_params)
        format.html { redirect_to @current_situation_country, notice: 'Current situation country was successfully updated.' }
        format.json { render :show, status: :ok, location: @current_situation_country }
      else
        format.html { render :edit }
        format.json { render json: @current_situation_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_situation_countries/1
  # DELETE /current_situation_countries/1.json
  def destroy
    @current_situation_country.destroy
    respond_to do |format|
      format.html { redirect_to current_situation_countries_url, notice: 'Current situation country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_situation_country
      @current_situation_country = CurrentSituationCountry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def current_situation_country_params
      params.require(:current_situation_country).permit(:name, :description)
    end
end

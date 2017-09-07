class SituationsArrivalsCountriesController < ApplicationController
  before_action :set_situations_arrivals_country, only: [:show, :edit, :update, :destroy]

  # GET /situations_arrivals_countries
  # GET /situations_arrivals_countries.json
  def index
    @situations_arrivals_countries = SituationsArrivalsCountry.all
    ap @situations_arrivals_countries
  end

  # GET /situations_arrivals_countries_three
  # GET /situations_arrivals_countries_three.json
  def situations_arrivals_countries_three
    @situations_arrivals_countries = SituationsArrivalsCountry.where(status:true, id: [1,2,3]).order('name ASC')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @situations_arrivals_countries}
    end
  end

  # GET /situations_arrivals_countries/1
  # GET /situations_arrivals_countries/1.json
  def show
  end

  # GET /situations_arrivals_countries/new
  def new
    @situations_arrivals_country = SituationsArrivalsCountry.new
  end

  # GET /situations_arrivals_countries/1/edit
  def edit
  end

  # POST /situations_arrivals_countries
  # POST /situations_arrivals_countries.json
  def create
    @situations_arrivals_country = SituationsArrivalsCountry.new(situations_arrivals_country_params)

    respond_to do |format|
      if @situations_arrivals_country.save
        format.html { redirect_to @situations_arrivals_country, notice: 'Situations arrivals country was successfully created.' }
        format.json { render :show, status: :created, location: @situations_arrivals_country }
      else
        format.html { render :new }
        format.json { render json: @situations_arrivals_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /situations_arrivals_countries/1
  # PATCH/PUT /situations_arrivals_countries/1.json
  def update
    respond_to do |format|
      if @situations_arrivals_country.update(situations_arrivals_country_params)
        format.html { redirect_to @situations_arrivals_country, notice: 'Situations arrivals country was successfully updated.' }
        format.json { render :show, status: :ok, location: @situations_arrivals_country }
      else
        format.html { render :edit }
        format.json { render json: @situations_arrivals_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /situations_arrivals_countries/1
  # DELETE /situations_arrivals_countries/1.json
  def destroy
    @situations_arrivals_country.destroy
    respond_to do |format|
      format.html { redirect_to situations_arrivals_countries_url, notice: 'Situations arrivals country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_situations_arrivals_country
      @situations_arrivals_country = SituationsArrivalsCountry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def situations_arrivals_country_params
      params.require(:situations_arrivals_country).permit(:name, :slug, :description, :percentage_profile)
    end
end

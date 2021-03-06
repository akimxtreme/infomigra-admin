class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy]

  # GET /countries
  # GET /countries.json
  def index
    @valor = params[:continent_id]
    # @countries = Country.where(status:true, continent_number: [@valor]).order('continent_number ASC')
      @countries = Country.joins(:country_category).where(status: true, continent_number: [@valor]).select(:id,:name,:name_cr,:flag_image,:generic_image,:country_category_id,'country_categories.percentage_profile AS country_category_percentage_profile')
    # @countries = Country.where(status:true, continent_number: [1,2,3,4,5]).order('continent_number ASC')
    # @countries = Country.where(status:true).order('continent_number ASC')
  end

  # GET /countries_three
  # GET /countries_three.json
  def countries_three
    # @countries = Country.where(status:true, id: [46,88,234]).order('name ASC')
    @countries = Country.joins(:country_category).where(status: true, id: [46,88,234]).select(:id,:name,:name_cr,:flag_image,:generic_image,:country_category_id,'country_categories.percentage_profile AS country_category_percentage_profile')
    #@countries = Country.where(status:true, id: [118,40,174]).order('name ASC') 
    #@jtable = {'Result' => 'OK','Records' => @countries.map(&:attributes)}

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @countries}
    end
  end

  # GET /countries/1
  # GET /countries/1.json
  def show
  end

  # GET /countries/new
  def new
    @country = Country.new
  end

  # GET /countries/1/edit
  def edit
  end

  # POST /countries
  # POST /countries.json
  def create
    @country = Country.new(country_params)

    respond_to do |format|
      if @country.save
        format.html { redirect_to @country, notice: 'Country was successfully created.' }
        format.json { render :show, status: :created, location: @country }
      else
        format.html { render :new }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countries/1
  # PATCH/PUT /countries/1.json
  def update
    respond_to do |format|
      if @country.update(country_params)
        format.html { redirect_to @country, notice: 'Country was successfully updated.' }
        format.json { render :show, status: :ok, location: @country }
      else
        format.html { render :edit }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countries/1
  # DELETE /countries/1.json
  def destroy
    @country.destroy
    respond_to do |format|
      format.html { redirect_to countries_url, notice: 'Country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def country_params
      params.require(:country).permit(:abbreviation, :name, :flag_image, :country_category_id)
    end
end

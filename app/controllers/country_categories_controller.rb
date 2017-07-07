class CountryCategoriesController < ApplicationController
  before_action :set_country_category, only: [:show, :edit, :update, :destroy]

  # GET /country_categories
  # GET /country_categories.json
  def index
    @country_categories = CountryCategory.all
  end

  # GET /country_categories/1
  # GET /country_categories/1.json
  def show
  end

  # GET /country_categories/new
  def new
    @country_category = CountryCategory.new
  end

  # GET /country_categories/1/edit
  def edit
  end

  # POST /country_categories
  # POST /country_categories.json
  def create
    @country_category = CountryCategory.new(country_category_params)

    respond_to do |format|
      if @country_category.save
        format.html { redirect_to @country_category, notice: 'Country category was successfully created.' }
        format.json { render :show, status: :created, location: @country_category }
      else
        format.html { render :new }
        format.json { render json: @country_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /country_categories/1
  # PATCH/PUT /country_categories/1.json
  def update
    respond_to do |format|
      if @country_category.update(country_category_params)
        format.html { redirect_to @country_category, notice: 'Country category was successfully updated.' }
        format.json { render :show, status: :ok, location: @country_category }
      else
        format.html { render :edit }
        format.json { render json: @country_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /country_categories/1
  # DELETE /country_categories/1.json
  def destroy
    @country_category.destroy
    respond_to do |format|
      format.html { redirect_to country_categories_url, notice: 'Country category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country_category
      @country_category = CountryCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def country_category_params
      params.require(:country_category).permit(:name, :description, :percentage_profile)
    end
end

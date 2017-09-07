class CurrentStatusesController < ApplicationController
before_action :set_situations_arrivals_country, only: [:show, :edit, :update, :destroy]

  # GET /current_statuses
  # GET /current_statuses.json
  def index
    @current_statuses = CurrentStatus.all
    ap @current_statuses

    @hola = "DOMINGO"

    @john = CurrentStatus.find(4).name_cr
    ap @john
      # SELECT * FROM SS WHERE id=?
  end

  # GET /current_statuses_three
  # GET /current_statuses_three.json
  def current_statuses_three
    @current_statuses = CurrentStatus.where(status:true, id: [1,2,3]).order('name ASC')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @current_statuses}
    end
  end

  # GET /current_statuses/1
  # GET /current_statuses/1.json
  def show
  end

  # GET /current_statuses/new
  def new
    @current_statuses = CurrentStatus.new
  end

  # GET /current_statuses/1/edit
  def edit
  end

  # POST /current_statuses
  # POST /current_statuses.json
  def create
    @current_statuses = CurrentStatus.new(current_statuses_params)

    respond_to do |format|
      if @current_statuses.save
        format.html { redirect_to @current_statuses, notice: 'Current Statuses was successfully created.' }
        format.json { render :show, status: :created, location: @current_statuses }
      else
        format.html { render :new }
        format.json { render json: @current_statuses.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_statuses/1
  # PATCH/PUT /current_statuses/1.json
  def update
    respond_to do |format|
      if @current_statuses.update(current_statuses_params)
        format.html { redirect_to @current_statuses, notice: 'Current Statuses was successfully updated.' }
        format.json { render :show, status: :ok, location: @current_statuses }
      else
        format.html { render :edit }
        format.json { render json: @current_statuses.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_statuses/1
  # DELETE /current_statuses/1.json
  def destroy
    @current_statuses.destroy
    respond_to do |format|
      format.html { redirect_to current_statuses_url, notice: 'Current Statuses was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private

    def current_status_params
      params.require(:current_status).permit(:name, :description, :percentage_profile)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def situations_arrivals_country_params
      params.require(:current_statuses).permit(:name, :slug, :description, :percentage_profile)
    end
end


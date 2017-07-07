class CategoryStepsController < ApplicationController
  before_action :set_category_step, only: [:show, :edit, :update, :destroy]

  # GET /category_steps
  # GET /category_steps.json
  def index
    @category_steps = CategoryStep.all
  end

  # GET /category_steps/1
  # GET /category_steps/1.json
  def show
  end

  # GET /category_steps/new
  def new
    @category_step = CategoryStep.new
  end

  # GET /category_steps/1/edit
  def edit
  end

  # POST /category_steps
  # POST /category_steps.json
  def create
    @category_step = CategoryStep.new(category_step_params)

    respond_to do |format|
      if @category_step.save
        format.html { redirect_to @category_step, notice: 'Category step was successfully created.' }
        format.json { render :show, status: :created, location: @category_step }
      else
        format.html { render :new }
        format.json { render json: @category_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_steps/1
  # PATCH/PUT /category_steps/1.json
  def update
    respond_to do |format|
      if @category_step.update(category_step_params)
        format.html { redirect_to @category_step, notice: 'Category step was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_step }
      else
        format.html { render :edit }
        format.json { render json: @category_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_steps/1
  # DELETE /category_steps/1.json
  def destroy
    @category_step.destroy
    respond_to do |format|
      format.html { redirect_to category_steps_url, notice: 'Category step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_step
      @category_step = CategoryStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_step_params
      params.require(:category_step).permit(:name, :description, :icon)
    end
end

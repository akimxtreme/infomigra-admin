class TypeStepsController < ApplicationController
  before_action :set_type_step, only: [:show, :edit, :update, :destroy]

  # GET /type_steps
  # GET /type_steps.json
  def index
    @type_steps = TypeStep.all
  end

  # GET /type_steps/1
  # GET /type_steps/1.json
  def show
  end

  # GET /type_steps/new
  def new
    @type_step = TypeStep.new
  end

  # GET /type_steps/1/edit
  def edit
  end

  # POST /type_steps
  # POST /type_steps.json
  def create
    @type_step = TypeStep.new(type_step_params)

    respond_to do |format|
      if @type_step.save
        format.html { redirect_to @type_step, notice: 'Type step was successfully created.' }
        format.json { render :show, status: :created, location: @type_step }
      else
        format.html { render :new }
        format.json { render json: @type_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_steps/1
  # PATCH/PUT /type_steps/1.json
  def update
    respond_to do |format|
      if @type_step.update(type_step_params)
        format.html { redirect_to @type_step, notice: 'Type step was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_step }
      else
        format.html { render :edit }
        format.json { render json: @type_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_steps/1
  # DELETE /type_steps/1.json
  def destroy
    @type_step.destroy
    respond_to do |format|
      format.html { redirect_to type_steps_url, notice: 'Type step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_step
      @type_step = TypeStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_step_params
      params.require(:type_step).permit(:name, :description)
    end
end

class YouWantToDosController < ApplicationController
  before_action :set_you_want_to_do, only: [:show, :edit, :update, :destroy]

  # GET /you_want_to_dos
  # GET /you_want_to_dos.json
  def index
    @you_want_to_dos = YouWantToDo.all
  end

  # GET /you_want_to_dos/1
  # GET /you_want_to_dos/1.json
  def show
  end

  # GET /you_want_to_dos/new
  def new
    @you_want_to_do = YouWantToDo.new
  end

  # GET /you_want_to_dos/1/edit
  def edit
  end

  # POST /you_want_to_dos
  # POST /you_want_to_dos.json
  def create
    @you_want_to_do = YouWantToDo.new(you_want_to_do_params)

    respond_to do |format|
      if @you_want_to_do.save
        format.html { redirect_to @you_want_to_do, notice: 'You want to do was successfully created.' }
        format.json { render :show, status: :created, location: @you_want_to_do }
      else
        format.html { render :new }
        format.json { render json: @you_want_to_do.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /you_want_to_dos/1
  # PATCH/PUT /you_want_to_dos/1.json
  def update
    respond_to do |format|
      if @you_want_to_do.update(you_want_to_do_params)
        format.html { redirect_to @you_want_to_do, notice: 'You want to do was successfully updated.' }
        format.json { render :show, status: :ok, location: @you_want_to_do }
      else
        format.html { render :edit }
        format.json { render json: @you_want_to_do.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /you_want_to_dos/1
  # DELETE /you_want_to_dos/1.json
  def destroy
    @you_want_to_do.destroy
    respond_to do |format|
      format.html { redirect_to you_want_to_dos_url, notice: 'You want to do was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_you_want_to_do
      @you_want_to_do = YouWantToDo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def you_want_to_do_params
      params.require(:you_want_to_do).permit(:name, :description)
    end
end

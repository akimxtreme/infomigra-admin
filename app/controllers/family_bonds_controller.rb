class FamilyBondsController < ApplicationController
  before_action :set_family_bond, only: [:show, :edit, :update, :destroy]

  # GET /family_bonds
  # GET /family_bonds.json
  def index
    @family_bonds = FamilyBond.all
  end

  # GET /family_bonds/1
  # GET /family_bonds/1.json
  def show
  end

  # GET /family_bonds/new
  def new
    @family_bond = FamilyBond.new
  end

  # GET /family_bonds/1/edit
  def edit
  end

  # POST /family_bonds
  # POST /family_bonds.json
  def create
    @family_bond = FamilyBond.new(family_bond_params)

    respond_to do |format|
      if @family_bond.save
        format.html { redirect_to @family_bond, notice: 'Family bond was successfully created.' }
        format.json { render :show, status: :created, location: @family_bond }
      else
        format.html { render :new }
        format.json { render json: @family_bond.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /family_bonds/1
  # PATCH/PUT /family_bonds/1.json
  def update
    respond_to do |format|
      if @family_bond.update(family_bond_params)
        format.html { redirect_to @family_bond, notice: 'Family bond was successfully updated.' }
        format.json { render :show, status: :ok, location: @family_bond }
      else
        format.html { render :edit }
        format.json { render json: @family_bond.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_bonds/1
  # DELETE /family_bonds/1.json
  def destroy
    @family_bond.destroy
    respond_to do |format|
      format.html { redirect_to family_bonds_url, notice: 'Family bond was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family_bond
      @family_bond = FamilyBond.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def family_bond_params
      params.require(:family_bond).permit(:name, :slug, :description, :percentage_profile)
    end
end

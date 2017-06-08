class FamilyBondsController < InheritedResources::Base

  private

    def family_bond_params
      params.require(:family_bond).permit(:name, :description, :percentage_profile)
    end
end


class AbilitiesController < InheritedResources::Base

  private

    def ability_params
      params.require(:ability).permit(:name, :description)
    end
end


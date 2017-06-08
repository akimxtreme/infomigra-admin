class EconomicActivitiesController < InheritedResources::Base

  private

    def economic_activity_params
      params.require(:economic_activity).permit(:name, :description)
    end
end


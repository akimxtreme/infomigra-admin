class DistancesController < InheritedResources::Base

  private

    def distance_params
      params.require(:distance).permit(:name, :description, :kilometers)
    end
end


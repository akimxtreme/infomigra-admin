class CurrentStatusesController < InheritedResources::Base

  private

    def current_status_params
      params.require(:current_status).permit(:name, :description, :percentage_profile)
    end
end


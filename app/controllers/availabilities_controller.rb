class AvailabilitiesController < InheritedResources::Base

  private

    def availability_params
      params.require(:availability).permit(:days_id, :schedules_id, :descripcion)
    end
end


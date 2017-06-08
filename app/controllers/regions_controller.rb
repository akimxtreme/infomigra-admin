class RegionsController < InheritedResources::Base

  private

    def region_params
      params.require(:region).permit(:name, :roman_number, :num_provinces, :num_communes)
    end
end


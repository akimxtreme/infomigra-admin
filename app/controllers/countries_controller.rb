class CountriesController < InheritedResources::Base

  private

    def country_params
      params.require(:country).permit(:abbreviation, :name, :flag_image, :country_categories_id)
    end
end


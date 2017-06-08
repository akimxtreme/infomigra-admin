class SituationsArrivalsCountriesController < InheritedResources::Base

  private

    def situations_arrivals_country_params
      params.require(:situations_arrivals_country).permit(:name, :description, :percentage_profile)
    end
end


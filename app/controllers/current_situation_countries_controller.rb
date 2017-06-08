class CurrentSituationCountriesController < InheritedResources::Base

  private

    def current_situation_country_params
      params.require(:current_situation_country).permit(:name, :description)
    end
end


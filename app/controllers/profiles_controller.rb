class ProfilesController < InheritedResources::Base

  private

    def profile_params
      params.require(:profile).permit(:country_categories_id, :situations_arrivals_countries_id, :current_statuses_id, :family_bonds_id)
    end
end


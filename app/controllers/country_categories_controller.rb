class CountryCategoriesController < InheritedResources::Base

  private

    def country_category_params
      params.require(:country_category).permit(:name, :description, :percentage_profile)
    end
end


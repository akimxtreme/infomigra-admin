class ThemeInterestsController < InheritedResources::Base

  private

    def theme_interest_params
      params.require(:theme_interest).permit(:name, :description)
    end
end


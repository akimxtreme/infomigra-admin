class GendersController < InheritedResources::Base

  private

    def gender_params
      params.require(:gender).permit(:abbreviation_1, :name, :description)
    end
end


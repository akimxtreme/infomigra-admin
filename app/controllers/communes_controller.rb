class CommunesController < InheritedResources::Base

  private

    def commune_params
      params.require(:commune).permit(:name, :provinces_id)
    end
end


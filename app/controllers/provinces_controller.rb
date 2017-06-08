class ProvincesController < InheritedResources::Base

  private

    def province_params
      params.require(:province).permit(:name, :num_communes, :regions_id)
    end
end


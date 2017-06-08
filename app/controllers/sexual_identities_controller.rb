class SexualIdentitiesController < InheritedResources::Base

  private

    def sexual_identity_params
      params.require(:sexual_identity).permit(:name, :description)
    end
end


class InterestsController < InheritedResources::Base

  private

    def interest_params
      params.require(:interest).permit(:name, :description)
    end
end


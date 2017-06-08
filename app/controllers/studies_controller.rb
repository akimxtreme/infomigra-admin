class StudiesController < InheritedResources::Base

  private

    def study_params
      params.require(:study).permit(:name, :description)
    end
end


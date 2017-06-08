class LevelStudiesController < InheritedResources::Base

  private

    def level_study_params
      params.require(:level_study).permit(:name, :description)
    end
end


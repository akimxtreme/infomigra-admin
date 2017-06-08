class CategoryStepsController < InheritedResources::Base

  private

    def category_step_params
      params.require(:category_step).permit(:name, :description, :icon)
    end
end


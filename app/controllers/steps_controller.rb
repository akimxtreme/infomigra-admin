class StepsController < InheritedResources::Base

  private

    def step_params
      params.require(:step).permit(:name, :description, :position, :category_steps_id, :type_steps_id)
    end
end


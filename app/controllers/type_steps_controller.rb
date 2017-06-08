class TypeStepsController < InheritedResources::Base

  private

    def type_step_params
      params.require(:type_step).permit(:name, :description)
    end
end


class UserStepsController < InheritedResources::Base

  private

    def user_step_params
      params.require(:user_step).permit(:users_id, :steps_id)
    end
end


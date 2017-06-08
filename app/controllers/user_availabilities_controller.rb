class UserAvailabilitiesController < InheritedResources::Base

  private

    def user_availability_params
      params.require(:user_availability).permit(:abilities_id, :users_id)
    end
end


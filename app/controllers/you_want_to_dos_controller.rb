class YouWantToDosController < InheritedResources::Base

  private

    def you_want_to_do_params
      params.require(:you_want_to_do).permit(:name, :description)
    end
end


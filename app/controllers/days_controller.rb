class DaysController < InheritedResources::Base

  private

    def day_params
      params.require(:day).permit(:name, :abbreviation, :description)
    end
end


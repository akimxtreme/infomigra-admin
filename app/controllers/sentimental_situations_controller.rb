class SentimentalSituationsController < InheritedResources::Base

  private

    def sentimental_situation_params
      params.require(:sentimental_situation).permit(:name, :description)
    end
end


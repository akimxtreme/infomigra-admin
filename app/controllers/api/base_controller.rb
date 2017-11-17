#Base controller which inherited by every api controller 
#/controllers/api/base_controller.rb
class Api::BaseController < InheritedResources::Base
  before_filter :authenticate_user!
  prepend_before_filter :get_auth_token

  respond_to :xml, :json

  private
  def get_auth_token
    if auth_token = params[:auth_token].blank? && request.headers["X-AUTH-TOKEN"]
      params[:auth_token] = auth_token
    end
  end
end
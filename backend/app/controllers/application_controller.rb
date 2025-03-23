class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?

  respond_to :json
  include ActionController::MimeResponds

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :email, :username, :image ])
    devise_parameter_sanitizer.permit(:account_update, keys: [ :email, :username, :image ])
    devise_parameter_sanitizer.permit(:sign_in, keys: [ :username_or_email ])
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!


  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
  	devise_parameter_sanitizer.sanitize(:sign_up)
  	devise_parameter_sanitizer.sanitize(:sign_in)
  	devise_parameter_sanitizer.sanitize(:account_update)
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # creating a before filter/action that is only run if the devise_controller is being used
  # this includes
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
  end
end

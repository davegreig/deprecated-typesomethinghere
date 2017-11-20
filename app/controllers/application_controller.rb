class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def after_sign_in_path_for(resource)
    sign_in_url = new_admin_session_url
    if request.referer == sign_in_url
      super
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end

  #configure permitted parameters for devise
  def configure_permitted_parameters
    added_attrs = [:email, :password, :password_confirmation, :remember_me, :avatar, :avatar_cache]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  end
end

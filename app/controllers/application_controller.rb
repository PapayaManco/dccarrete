class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :update_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(_resource)
    if current_user.admin?
      '/admin'
    else
      '/static_pages/home'
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def update_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end

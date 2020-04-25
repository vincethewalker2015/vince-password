class ApplicationController < ActionController::Base

  def authorize_admin
    redirect_to root_path, alert: 'Access Denied' unless current_user.admin?
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end

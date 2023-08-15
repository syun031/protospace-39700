class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end

  def require_login
    unless current_user
      redirect_to login_path, flash: { error: 'ログインしてください。' }
    end
  end
end

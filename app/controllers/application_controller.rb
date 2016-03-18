class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?


  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :company_name, :cover_image, :logo, :company_url) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :current_password, :company_name, :cover_image, :logo, :company_url) }
    end
end

class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    add_breadcrumb "home", :root_path
  
    protected
  
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
        devise_parameter_sanitizer.permit(:sign_in) do |user_params|
            user_params.permit(:email)
         end
    end
end
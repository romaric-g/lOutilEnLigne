class ApplicationController < ActionController::Base
    if ENV['RAILS_ENV'] == "production"
        http_basic_authenticate_with name: ENV['S3_KEY'], password: ENV['S3_SECRET']
    end 
    before_action :configure_permitted_parameters, if: :devise_controller?
    add_breadcrumb "Accueil", :root_path
  
    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
        devise_parameter_sanitizer.permit(:sign_in) do |user_params|
            user_params.permit(:email)
         end
    end
end
class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :icon])
    end

    def after_sign_in_path_for(resource)
        if current_user
            flash[:notice] = "ログインに成功しました" 
            words_path  #　指定したいパスに変更
        else 
            words_path  #　指定したいパスに変更
        end
    end

    def after_sign_out_path_for(resource)
        words_url
    end
end

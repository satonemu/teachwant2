class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

# ユーザがログイン後のページ遷移先
    before_action :authenticate_user!
	def after_sign_in_path_for(resource)
		public_users_path
	end

	def after_sign_out_path_for(resource)
    	new_user_session_path # ログアウト後に遷移するpathを設定
  	end

  	protected

# サインアップ時、devise初期設定に追加したカラムを記載
  	def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :sex])
  	end
end

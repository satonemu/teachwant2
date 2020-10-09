# frozen_string_literal: true

class Public::Users::SessionsController < Devise::SessionsController
  before_action :configure_permitted_parameters, only: [:create]
  before_action :authenticate_user!
  # before_action :configure_sign_in_params, only: [:create]
 
  def after_sign_in_path_for(resource)
    #byebug
    root_path
  end
  # ユーザがログイン後のページ遷移先
  def after_sign_out_path_for(resource)
    new_user_session_path # ログアウト後に遷移するpathを設定
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

   protected
  # サインアップ時、devise初期設定に追加したカラムを記載
   def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :sex])
   end

   # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end

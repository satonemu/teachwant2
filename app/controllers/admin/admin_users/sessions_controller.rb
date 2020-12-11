# frozen_string_literal: true

class Admin::AdminUsers::SessionsController < Devise::SessionsController

  # before_action :configure_sign_in_params, only: [:create]
  # before_action :authenticate_admin!
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

  def after_sign_in_path_for(resource)
    admin_genres_path
  end

  def after_sign_out_path_for(resource)
    new_admin_admin_user_session_path # ログアウト後に遷移するpathを設定
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end

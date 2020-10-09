class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

  	protected

#サインアップ時、devise初期設定に追加したカラムを記載
end

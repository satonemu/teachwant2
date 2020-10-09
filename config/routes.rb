Rails.application.routes.draw do

  namespace :admin do
    devise_for :admin_users, controllers: {
    sessions: 'admin/admin_users/sessions',
    registrations: 'admin/admin_users/registrations',
    passwords: 'admin/admin_users/passwords'
  }
end

  scope module: 'public' do
    devise_for :users, controllers: {
    sessions: 'public/users/sessions',
    registrations: 'public/users/registrations',
    passwords: 'public/users/passwords'
  }
end

namespace :public do
	resources :users, only: [:index, :show, :edit]
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

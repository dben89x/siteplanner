Rails.application.routes.draw do
  scope module: :api do
    scope module: :v1 do
      resources :projects
      resources :tasks
    end
  end
  devise_for :admin_users
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

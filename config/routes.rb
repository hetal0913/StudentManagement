Rails.application.routes.draw do

  root to: 'students#home'

  namespace :admin do
    resources :students
    resources :projects
    get 'dashboard' => 'dashboard#index'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

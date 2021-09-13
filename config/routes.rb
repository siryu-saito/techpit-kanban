Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#delete'
  end
  root 'top#index'
  
  resources :list, only: %i(new create edit update destroy) do
    resources :card, except: %i(index)
  end
end

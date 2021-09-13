Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#delete'
  end
  root 'top#index'
end

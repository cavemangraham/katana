Rails.application.routes.draw do

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end


    resources :searches do
      resources :businesses
    end



  root 'welcome#index'

end

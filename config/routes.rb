Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do 
      
      get '/shelters', to: "shelters#get_shelters"
      # get '/shelters' => 'shelters#index' 
      # get, post, patch delete

      resources :pets 

      resources :shelters do 
        resources :pets 
        
      end 
    end 
  end 
end

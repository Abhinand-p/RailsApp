Rails.application.routes.draw do
   resources :users do
   		resources :tweets
	end

   root 'users#index'



  get  'tweets/show'

  

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

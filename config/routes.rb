Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index' 

    resources :api_endpoints do
    collection do
      get :sample_get
      post :sample_post
    end
  end

end

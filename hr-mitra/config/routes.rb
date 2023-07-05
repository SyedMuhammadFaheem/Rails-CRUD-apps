Rails.application.routes.draw do
  root 'home#index'
  resources :employees    # resource controllers are used for REST phenomeon (generally for CRUD operations)
  
  # A member route will require an ID, because it acts on a member. A collection route doesn't because it acts on a collection of objects.
  
  
  get 'about' => 'pages#about_us'
  get 'contact' => 'pages#contact_us'
  get 'privacy-policy' => 'pages#privacy_policy'
  get 'terms-and-conditions' => 'pages#terms_and_conditions'
  # get 'home/index'
  # get '/home' => 'home#index'

end

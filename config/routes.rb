Rails.application.routes.draw do


  

  root 'static_pages#index'
  get  'directions' => 'maps_ebed#directions'
  get  'stay'       => 'maps_ebed#stay'
  get  'response'   => 'response#rsvp'
  get  'garb'       => 'static_pages#garb'
  get  'contact'    => 'static_pages#contact'
  # post 'invitee'    => 'invitee#create'
  
  
  #
  post 'response'   => 'response#create'
  get  'response'   => 'response#edit'
  
  #moved from top ____
  #get 'sessions/new'

  #not sure userS and inviteeS or non-plural versions
  resources :user
  resources :invitee
  
  #matching?!?
  #match '/invitee' => 'invitee#index', :via => :post
  
  #login page routes
  #get    'login'   => 'sessions#new'
  #post   'login'   => 'sessions#create'
  #delete 'logout'  => 'sessions#destroy'
  
  
  get  'invitee/create'
end

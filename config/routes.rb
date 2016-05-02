Rails.application.routes.draw do

  #not sure userS and inviteeS or non-plural versions
  resources :user
  resources :invitee

  get 'errors/not_found'

  get 'errors/internal_server_error'

  root 'static_pages#index'
  get  'directions' => 'maps_ebed#directions'
  get  'stay'       => 'maps_ebed#stay'
  get  'response'   => 'response#rsvp'
  get  'garb'       => 'static_pages#garb'
  get  'contact'    => 'static_pages#contact'

  post 'admin'      => 'admin#destroy'
  get  'admin'      => 'admin#admin'
  post "invitee/:id"  => 'admin#destroy'
  post "invitee"    => 'invitee#destroy'
  #^^^^^^^^^^^^^^^^^^^^^^^   last line deletes correct entry

  
  
  post 'response'   => 'response#new'
  post 'response'   => 'response#create'
  get  'response'   => 'response#edit'
  post 'invitee'    => 'invitee#create'


  #not sure userS and inviteeS or non-plural versions
  resources :user
  resources :invitee
  
  #matching?!?
  #match '/invitee' => 'invitee#index', :via => :post
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  
  #login page routes
  #get    'login'   => 'sessions#new'
  #post   'login'   => 'sessions#create'
  #delete 'logout'  => 'sessions#destroy'

end

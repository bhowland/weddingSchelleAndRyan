Rails.application.routes.draw do


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
  get  'party'      => 'static_pages#weddingParty'
  get  'food'       => 'static_pages#food'
  get  'schedule'   => 'static_pages#schedule'

  post 'admin'      => 'admin#destroy'
  get  'admin'      => 'admin#admin'
  post "invitee/:id"  => 'admin#destroy'
  post "invitee"    => 'invitee#destroy'


  
  
  post 'response'   => 'response#new'
  post 'response'   => 'response#create'
  get  'response'   => 'response#edit'
  post 'invitee'    => 'invitee#create'
  


  #match '/invitee' => 'invitee#index', :via => :post
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  
  #login page routes
  #get    'login'   => 'sessions#new'
  #post   'login'   => 'sessions#create'
  #delete 'logout'  => 'sessions#destroy'

end

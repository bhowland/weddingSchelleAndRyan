Rails.application.routes.draw do

  #not sure userS and inviteeS or non-plural versions
  resources :user
  resources :invitee

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

end

Rails.application.routes.draw do

  root 'places#index'

  get '/places/new' => 'places#new'
  post '/places' => 'places#submitted'

  get '/places' => 'places#index', :as => "index"
  get '/places/:id' => 'places#show', :as => "places_show"

  get '/places/:id/edit' => 'places#edit', :as => "places_edit"
  patch '/places/:id' => 'places#update', :as => "places_update"

  delete '/places/:id' => 'places#delete', :as => "places_delete"

  post '/reviews/:place_id/submit_new'  => 'reviews#create', :as => "reviews_create"

end

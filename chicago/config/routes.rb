Rails.application.routes.draw do

  root  'places#index'

  get '/places/new'      => 'places#new',  :as => "places_new"
  get '/places/:id/edit' => 'places#edit', :as => "places_edit"

  get    '/places'     => 'places#index',   :as => "index"
  post   '/places'     => 'places#create',  :as => "places_create"
  get    '/places/:id' => 'places#show',    :as => "places_show"
  patch  '/places/:id' => 'places#update',  :as => "places_update"
  delete '/places/:id' => 'places#destroy', :as => "places_destroy"

  post '/reviews/:place_id'  => 'reviews#create', :as => "reviews_create"

end

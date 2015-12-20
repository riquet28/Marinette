Rails.application.routes.draw do
  
  root 'locations#index'
  resources :locations
  get "locations/:id/refresh" => "locations#refresh", as: :refresh_location
end

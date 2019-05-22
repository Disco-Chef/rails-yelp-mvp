Rails.application.routes.draw do
  get 'restaurants/index'
  get 'restaurants/create'
  get 'restaurants/new'
  get 'restaurants/edit'
  get 'restaurants/show'
  get 'restaurants/update'
  get 'restaurants/destroy'
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as:'list'
  get 'lists/:id/edit' => 'lists#edit', as:'list_edit'
  patch 'lists/:id' => 'lists#update', as:'list_update'
  get '/top' => 'homes#top'
  delete 'lists/:id' => 'lists#destroy', as:'list_destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  get 'todolists/new'

  post 'todolists' => 'todolists#create'
  get  'todolists' => 'todolists#index'
end

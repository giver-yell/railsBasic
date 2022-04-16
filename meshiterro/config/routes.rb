Rails.application.routes.draw do
  # deviseで自動設定
  devise_for :users
  # root設定
  root to: 'homes#top'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # top画面
  get  'top' => 'homes#top'
  # 投稿画面
  get  'todolists/new'
  # 投稿処理
  post 'todolists' => 'todolists#create'
  # 一覧画面
  get  'todolists' => 'todolists#index'
  # 詳細画面
  get  'todolists/:id' => 'todolists#show', as: 'todolist'
  # 編集画面
  get  'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  # 編集処理
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
end

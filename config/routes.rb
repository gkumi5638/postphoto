Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'photos#index'
    get 'photos' => 'photos#index'
    get 'photos/new' => 'photos#new'

  # 使うリソースだけに制限する
  resources :users
end

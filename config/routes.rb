Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'photos#index'
  
  # 使うリソースだけに制限する
  resources :users
end

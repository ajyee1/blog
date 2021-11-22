Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
  resources :articles, except: :index
  # ⚠️ don't forget to replace `articles_path` by `root_path` on all the "Back" `link_to`
end

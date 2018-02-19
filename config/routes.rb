Rails.application.routes.draw do
  get 'posts/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to =>"home#index"
  get 'posts' =>"posts#index"
  get 'posts/new' =>"posts#new"
  post 'posts/create' =>"posts#create"
  get 'posts/:id' =>"posts#show"
  post "posts/:id/destroy" => "posts#destroy"
end

Rails.application.routes.draw do
  devise_for :users
  get "users/:id" => "users#show"
  get "jj" =>"home#t"
  get "answer" => "answers#index"
  get "answer/:id" => "answers#new"
  get 'posts/index'
  post 'answer/:id/create' =>"answers#create"
 
  post "likes/:post_id/create"=>"likes#create"
 post "likes/:post_id/destroy" => "likes#destroy"
 
 post 'posts/:id/comment' =>"comments#create"
 
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to =>"home#index"
  get 'posts' =>"posts#index"
  get 'posts/new' =>"posts#new"
  post 'posts/create' =>"posts#create"
  get 'posts/:id' =>"posts#show"
  post "posts/:id/destroy" => "posts#destroy"
end

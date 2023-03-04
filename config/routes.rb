Rails.application.routes.draw do
  root "pages#home"
  put 'posts/:id/upvote', to: 'pages#upvote', as: 'upvote_page'
  put 'posts/:id/downvote', to: 'pages#downvote', as: 'downvote_page'
  resources :posts
end

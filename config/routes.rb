Rails.application.routes.draw do
root 'feed#index'

get 'quacks/new' => 'quacks#new', as: :new_quack
get 'quacks/top' => 'quacks#top', as: :top_quack
post 'quacks' => 'quacks#create', as: :create_quack

get 'sign_in' => 'sessions#new', as: :sign_in
post 'sign_in' => 'sessions#create'
delete 'sign_in' => 'sessions#delete'

get 'registration' => 'users#new', as: :new_user
post 'registration' => 'users#create', as: :create_user

get 'ducklings' => 'users#ducklings', as: :ducklings
get 'following' => 'users#following', as: :following
post 'follow/:user_id' => 'users#follow', as: :follow
post 'unfollow/:user_id' => 'users#unfollow', as: :unfollow

end

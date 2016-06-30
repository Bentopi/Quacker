Rails.application.routes.draw do
root 'feed#index'

get 'sign_in' => 'sessions#new', as: :sign_in
post 'sign_in' => 'sessions#create'
delete 'sign_in' => 'sessions#delete'

get 'registration' => 'users#new', as: :new_user
post 'registration' => 'users#create', as: :create_user
end

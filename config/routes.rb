Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :new, :show, :create ] do
    resources :reviews, only: [ :create ]
  end

  # There are not in the resources :restaurants
  # We do not need restaurant_id when edit, update, destroy
  resources :reviews, only: [ :edit, :update, :destroy ]
end

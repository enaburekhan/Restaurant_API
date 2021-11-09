Rails.application.routes.draw do
  scope :api do
    scope :v1 do
      # get 'restaurants/import' => 'restaurants#import'
      resources :users, only: %i[create]
      resources :authentications, only: %i[create]
      resources :restaurants, only: %i[index show]
      resources :collections
    end
  end  
end
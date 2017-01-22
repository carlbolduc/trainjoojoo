Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :body_parts
  resources :exercises do
    resources :successions
  end
  resources :workouts do
    resources :successions
  end
  resources :successions
end

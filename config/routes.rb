Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get 'user/index' => 'user#index'
get 'photo/index/:id' => 'photo#index', as: 'user_photos'

end

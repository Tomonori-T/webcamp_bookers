Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:  'home#top'
  get 'top' => 'home#top'
  resources :books

end

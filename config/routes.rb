Rails.application.routes.draw do

  resources :tests, except: [:index] do
    resources :questions, shallow: true
  end

end
  

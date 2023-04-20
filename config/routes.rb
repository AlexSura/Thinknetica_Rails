Rails.application.routes.draw do

  resources :tests, except: [:index] do
    resources :questions
  end

end
  

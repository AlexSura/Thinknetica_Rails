Rails.application.routes.draw do

  resources :tests do 
    post :start, on: :member
    resources :questions, shallow: true, except: :index do
      resources :answers, shallow: true
    end


  resources :test_passages, only: %i[show update]
    get :result, on: :member
  end
end
  

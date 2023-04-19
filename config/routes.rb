Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root 'tests#index'

resources :tests, except: [:index], shallow: true do
  resources :questions
end






  #resources :tests
  
  # resources :tests, only: %i[index show] 

  #resources :tests do 
  
  #resources :account 

  #resources :questions, shallow: true


  #get '/tests/:id/start', to: 'tests#start'    

  #get '/tests/:id/start', to: 'tasks#start'

end

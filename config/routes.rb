# frozen_string_literal: true
Rails.application.routes.draw do

  resources :tests do 
    post :start, on: :member
    resources :questions, shallow: true, except: :index do
      resources :answers, shallow: true
    end
  end

  resources :test_passages, only: %i[show update] do
    get :result, on: :member
  end

  root 'tests#index'
  
  get :signup, to: 'users#new'
  
  resources :users, only: :create

  get :login, to: 'sessions#new'

  resources :session, only: %i[create destroy]
end
  

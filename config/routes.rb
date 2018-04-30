Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do

      post 'auth/login', to: 'users#login'
      resources :semesters
      resources :classrooms
      resources :courses
      resources :states
      resources :levels do
        resources :todays
        resources :courses
        resources :todays do
         resources :courses
        end
      end
      resources :periods
      resources :semesters
      resources :students do
        post 'auth/register', to: 'users#register'
        get 'test', to: 'users#test'
        resources :classyncs
        resources :attendances
      end
    end
  end 



end

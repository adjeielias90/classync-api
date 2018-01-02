Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :semesters
      resources :classrooms
      resources :courses
      resources :levels
      resources :periods
      resources :semesters
      resources :states
      resources :students   
    end
  end 



end

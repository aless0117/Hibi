Rails.application.routes.draw do




  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  resources :lackcodes
  resources :lacks

  resources :assign_subjects
  resources :days
  resources :schedules
  resources :subjects

  resources :students do
    resources :notifications
    resources :absents
  end



  resources :subjectsto_classrooms do
    resources :nomina
  end



  resources :subjectsto_classrooms do
    resources :students do
    resources :absents
    resources :delays
    end
  end




  resources :classrooms do
    resources :report
  end


authenticated :user do
   root 'welcome#index', as: :authenticated_root
 end

 root "home#index"





  get 'perfil/index'


  devise_for :users, :controllers => { registrations: 'registrations' }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

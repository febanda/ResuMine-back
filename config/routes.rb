Rails.application.routes.draw do
  resources :skills
  resources :educations
  resources :work_experiences
  resources :personal_infos
  resources :resumes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

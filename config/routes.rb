Rails.application.routes.draw do
  root "tasks#index"
  get "tasks/about", to: "tasks#about"
  get "tasks/new", to: "tasks#new"
  post "tasks/create", to: "tasks#create"
  patch "tasks/:id", to: "tasks#toggle_completed", as: :toggle_completed
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "/tasks", to: "tasks#index"

  # Nouvelle tâche (formulaire)
  get "/tasks/new", to: "tasks#new"
  # Nouvelle tâche (tâche créée)
  post "/tasks", to: "tasks#create"

  # Index des tasks
  get "/tasks", to: "tasks#index"

  # Edit d'une tâche (formulaire)
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # Update
  patch "/tasks/:id", to: "tasks#update"

  # Destroy une tâche
  delete "/tasks/:id", to: "tasks#destroy"

  get "/tasks/:id", to: "tasks#show", as: :task

end

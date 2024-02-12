Rails.application.routes.draw do
  get 'work_queue' => 'work_queue#index', as: :work_queue
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  # get 'tasks/show'
  # get 'tasks/new'
  # get 'tasks/edit'

  

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "error", to: "pages#error"

  # redirection example
  get "blog", to: redirect("https://www.youtube.com/")

  # "./projects/5/tasks/3"    type nesting
  resources :projects do
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end

  # setting home page
  root 'pages#home'

  # anything in the bottom should be the last route
  get "*path", to: redirect("/error")
end

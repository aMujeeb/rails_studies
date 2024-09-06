Rails.application.routes.draw do

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "error", to: "pages#error"

  # redirection example
  get "blog", to: redirect("https://www.youtube.com/")

  resources :projects

  # setting home page
  root 'pages#home'

  # anything in the bottom should be the last route
  get "*path", to: redirect("/error")
end

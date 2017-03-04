#
#  routes.rb
#  Defines the routes for each page in a controller
#

Rails.application.routes.draw do
  
  get 'users/new'

  # Set /home as index/root/home
  root 'static_pages#home'

  # Route a GET request for this URL to the __ action in StaticPagesController
  # Will generate help_path and help_url etc
  
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup',  to: 'users#new'
end

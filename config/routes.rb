Rails.application.routes.draw do
  
  # Set /home as index/root/home
  root 'static_pages#home'
  
  get 'static_pages/help'
  
  # Route a GET request for this URL to the about action in StaticPagesController
  get 'static_pages/about'

end

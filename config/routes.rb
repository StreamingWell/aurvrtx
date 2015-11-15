Openmicrosite::Application.routes.draw do

  # Home
  root :to => 'pages#landing'
  #root :to => 'pages#coming_soon'

  # Live Webinar
  #root :to => 'pages#live'

  # Authentication
  devise_for :admins
  devise_for :users

  # Static pages
  get 'landing' => 'pages#landing'
  get 'home' => 'pages#home'
  get 'register' => 'pages#register'
  get 'about' => 'pages#about'
  get 'pi' => 'pages#pi'
  get 'live' => 'pages#live'
  get 'login' => 'pages#login'
  get 'help' => 'pages#help'
  get 'privacy' => 'pages#privacy'
  get 'terms' => 'pages#terms'
  get 'cookies' => 'pages#cookies'
  #get 'request_a_kam' => 'pages#request_a_kam'
  #get 'faq' => 'pages#faq'
  #get 'evaluation' => 'pages#evaluation'
  #get 'firstinteractive' => 'pages#firstinteractive'
  # get 'archive' => 'pages#archive'


  # Feedback/submissions
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  match 'feedback' => 'feedback#new', :as => 'feedback', :via => :get
  match 'feedback' => 'feedback#create', :as => 'feedback', :via => :post

  # First Interactive/submissions
  #match 'contact' => 'contact#new', :as => 'contact', :via => :get
  #match 'contact' => 'contact#create', :as => 'contact', :via => :post
  #match 'firstinteractive' => 'firstinteractive#new', :as => 'firstinteractive', :via => :get
  #match 'firstinteractive' => 'firstinteractive#create', :as => 'firstinteractive', :via => :post

  # Second Interactive/submissions
  #match 'contact' => 'contact#new', :as => 'contact', :via => :get
  #match 'contact' => 'contact#create', :as => 'contact', :via => :post
  #match 'secondinteractive' => 'secondinteractive#new', :as => 'secondinteractive', :via => :get
  #match 'secondinteractive' => 'secondinteractive#create', :as => 'secondinteractive', :via => :post
end

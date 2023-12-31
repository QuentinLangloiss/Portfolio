Rails.application.routes.draw do
  get 'experiences/index'
  get 'competences/index'
  get 'projets/index'
  get 'projets/show'
  # Page d'accueil
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Routes pour les projets
  resources :projets, only: [:index, :show]

  # Routes pour les compétences
  resources :competences, only: [:index]

  # Routes pour les expériences
  resources :experiences, only: [:index]

  # Autres pages statiques
  get 'about', to: 'pages#about'
  # get 'contact', to: 'pages#contact'
  get 'contact', to: 'contacts#new'
  post '/contacts', to: 'contacts#create'
  # root "contact_form#new"
  resources :contacts, only: %i[new create]
  # Defines the root path route ("/")
  # root "articles#index"
end

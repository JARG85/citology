Rails.application.routes.draw do

  resources :asignacion, only: [:index, :create, :destory]

  devise_for :pacientes, path: 'pacientes', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

  resources :asignacion do
    collection do
      get :get_medicos
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

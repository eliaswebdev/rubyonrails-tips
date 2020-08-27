Rails.application.routes.draw do
  resources :cars, path: :carros, path_names: { new: :cadastrar, edit: :editar }
  resources :motorcycles, path: :motos, path_names: { new: :cadastrar, edit: :editar }

  root to: 'pages#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

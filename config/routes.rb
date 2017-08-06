Rails.application.routes.draw do
  get 'welcome/index'

  get 'marcas/index'

  resources:marcas

  resources:productos
  
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'people/index'

  get 'people/new'

  get 'people/edit'

  get 'people/show'

  root to: 'people#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

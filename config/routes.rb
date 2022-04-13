Rails.application.routes.draw do
  root 'demo#index'

  get 'demo/index'

  # get ':controller(/:action(/:id))'
end

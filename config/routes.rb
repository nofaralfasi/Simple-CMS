Rails.application.routes.draw do
  root 'demo#index'

  get 'demo/index'

  get 'play/index'

  get ':controller(/:action(/:id))'
end

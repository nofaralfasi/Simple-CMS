Rails.application.routes.draw do
  root 'demo#index'

  get 'demo/index'
  get 'demo/hello'
  get 'demo/contact'
  get 'demo/about'

  get 'play/index'

  # get ':controller(/:action(/:id))'
end

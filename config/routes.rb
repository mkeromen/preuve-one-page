PreuveOnePage::Application.routes.draw do
  resources :lines
  get 'createplaceholder', to: 'lines#create_placeholders'

  root to: 'page#index'

end

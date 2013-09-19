PreuveOnePage::Application.routes.draw do
  resources :lines

  root to: 'page#index'

end

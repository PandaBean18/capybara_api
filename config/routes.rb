Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    post '/upload', to: 'data#upload', defaults: { format: 'json' }
    get '/images/:id.png', to: 'data#image'
end

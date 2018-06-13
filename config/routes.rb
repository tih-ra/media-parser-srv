Rails.application.routes.draw do
  namespace :admin do
    resources :media_objects
    resources :media_pulls
    resources :media_tags

    root to: 'media_objects#index'
  end

  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql' if Rails.env.development?

  post '/graphql', to: 'graphql#execute'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    mount_devise_token_auth_for 'User', at: 'auth'

    namespace :v1 do
      get '/is_authenticated', to: 'is_authenticated#index'
    end
  end
end

# frozen_string_literal: true

Rails.application.routes.draw do
  get '/products', to: 'products#index'
  get '/products/:id', to: 'products#show', as: :product
end

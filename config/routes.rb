# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  post 'ask', to: 'home#ask', as: :ask
end

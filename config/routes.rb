# frozen_string_literal: true

Rails.application.routes.draw do
  resources :movies, only: %i[index show]
  root to: 'movies#index'
end

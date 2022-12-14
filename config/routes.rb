# frozen_string_literal: true

Rails.application.routes.draw do
  root 'sequences#index', as: 'home'
  get 'sequences/result'
end

# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'user_polls#new'
  resources :polls
  resources :questions
  resources :answers
  resources :poll_question_answers
  resources :user_polls
end

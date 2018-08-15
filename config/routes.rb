Rails.application.routes.draw do
  resources :chat_room, only: [:show, :create, :index] do
    resources :message, only: [:create]
  end

  resources :user, only: [:create]
end

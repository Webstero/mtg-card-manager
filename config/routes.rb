Rails.application.routes.draw do
  devise_for :users, class_name: "Users::Models::User"

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  root "cards#index"
  resources :cards, only: [:show]
  resources :card_collections do
    post "add_card", to: "card_collections#add_card", as: "add_card"
  end
end

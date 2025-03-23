Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  scope :api, defaults: { format: :json } do
    devise_for :users

    devise_scope :user do
      scope :auth do
        get "me" => "auth#me"
        post "sign_up" => "devise/registrations#create"
        post "sign_in" => "devise/sessions#create"
      end
    end
  end
  # Defines the root path route ("/")
  root "home#index"
end

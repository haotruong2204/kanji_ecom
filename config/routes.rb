require "sidekiq/web"
require "sidekiq-status/web"

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => "/api/docs"
  mount Rswag::Api::Engine => "/api/docs"
  mount Sidekiq::Web => "/sidekiq"

  get "up" => "rails/health#show", as: :rails_health_check


  # common_devise_routes = {
  #   "/send_reset_password_token" => "passwords#send_reset_password_token",
  #   "/reset_password" => "passwords#reset_password",
  # }
   
  devise_for :admins, skip: :all
  namespace :api do
    namespace :v1 do
      namespace :admins do
        devise_scope :admin do
          post "sign_in", to: "sessions#create"
          delete "sign_out", to: "sessions#destroy"
        end

        get "home_page", to: "dashboard#home_page"
      end

      namespace :users do
        # devise_scope :user do
        #   common_devise_routes.each do |path, action|
        #     post path, to: action
        #   end
        # end

        # post "auth_google", to: "omniauths#auth_google"
        # post "auth_tiktok", to: "omniauths#auth_tiktok"
        # post "auth_twitter", to: "omniauths#auth_twitter"
        # get "request_token_twitter", to: "omniauths#request_token_twitter"
        # post "verify_otp", to: "otp_verifications#verify_otp"
        # post "resend_otp", to: "otp_resend#resend_otp"
      end
    end
  end
end

Catarse::Application.routes.draw do

  root :to => "projects#index"

  match "/auth/:provider/callback" => "sessions#create"
  match "/auth/failure" => "sessions#failure"
  match "/logout" => "sessions#destroy", :as => :logout
  #if Rails.env == "test"
    match "/fake_login" => "sessions#fake_create", :as => :fake_login
  #end
  
  resources :projects

end


Rails.application.routes.draw do
  get "/login_form" => "user#login_form"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/login" => "user#login"
  get "/error" => "user#error"
  get "/new" => "user#new"
  post "/new_account" => "user#new_account"
  get "/dig_up" => "user#dig_up"


  get "/dig_up" => "user#dig_up"
  post "/decide" => "digs#decide"

end

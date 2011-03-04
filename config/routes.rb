Grooopme::Application.routes.draw do
  resources :time_blocks, :days, :schedules, :groups

  devise_for :users, :controllers => { :registrations => "registrations" } do
    get "signup_wizard", :to => "registrations#signup_wizard"
  end

  root :to => "pages#home"
end

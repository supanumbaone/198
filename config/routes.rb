Grooopme::Application.routes.draw do
  resources :time_blocks, :days, :schedules, :groups, :memberships

  devise_for :users, :controllers => { :registrations => "registrations" } do
    get "signup_wizard", :to => "registrations#signup_wizard"
  end
  
  resources :users, :only => [:index, :show]

  root :to => "pages#home"
  match "/signed_up" => "pages#signed_up", :as => "signed_up"
  match "/waiting_for_confirmation" => "pages#waiting_for_confirmation", :as => "waiting_for_confirmation"
  match "/download" => "users#download", :as => "download"
  match "/stats" => "pages#stats", :as => "stats"
  match "/roster" => "pages#roster", :as => "roster"
  
  #Comments
  #=======================#
  match "/add_comment" => "comments#create", :as => "add_comment"
  match "/update_comment" => "comments#update", :as => "update_comment"
  match "/destroy_comment" => "comments#destroy", :as => "destroy_comment"
end

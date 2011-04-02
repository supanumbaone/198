Grooopme::Application.routes.draw do
  resources :time_blocks, :days, :schedules, :groups, :memberships

  devise_for :users, :controllers => { :registrations => "registrations" } do
    get "signup_wizard", :to => "registrations#signup_wizard"
  end
  
  resources :users, :only => [:index, :show]

  root :to => "pages#home"
  match "/signed_up" => "pages#signed_up", :as => "signed_up"
  match "/download" => "users#download", :as => "download"
  
  #Comments
  #=======================#
  match "/add_comment" => "comments#create", :as => "add_comment"
  match "/update_comment" => "comments#update", :as => "update_comment"
  match "/destroy_comment" => "comments#destroy", :as => "destroy_comment"
end

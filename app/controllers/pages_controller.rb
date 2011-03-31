class PagesController < ApplicationController
  
  def home
    @user = current_user
    if user_signed_in?
      @groups = @user.groups.all
    end
  end
  
  def signed_up
  end
end

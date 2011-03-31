class UsersController < ApplicationController
  # before_filter :authenticate_user!

  def index
    @group = Group.find(params[:group_id])
    @users = @group.users
    @count = @users.count
    @users = @users.paginate :page => params[:page], :per_page => 40
  end

  def show
    @user = User.find(params[:id])
  end
end

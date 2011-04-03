class GroupsController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate_user!
  
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @comment = Comment.new
    @root_comments = @group.root_comments
    @all_comments = @group.comment_threads
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params[:group])
    @group.creator = current_user.id
    @group.total_members = 1
    if @group.save
      @membership = Membership.new(:group_id => @group.id, :user_id => current_user.id)
      if @membership.save
        redirect_to @group, :notice => "Successfully created group."
      else
        flash[:error] = "We were not able to create your membership with this group, please try again :/"
        render :action => 'new'
      end
    else
      render :action => 'new'
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(params[:group])
      redirect_to @group, :notice  => "Successfully updated group."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_url, :notice => "Successfully destroyed group."
  end
end

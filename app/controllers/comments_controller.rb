class CommentsController < ApplicationController
  load_and_authorize_resource
  
  def create
    @group = Group.find(params[:group_id])
    @user = current_user
    @comment = Comment.build_from(@group, @user.id, params[:comment][:body])
    @comment.user_id = @user.id
    if @comment.save
      if !params[:parent_id].blank?
        @comment.move_to_child_of(params[:parent_id])
      end
      flash[:notice] = "Added comment!"
    else
      flash[:notice] = "Failed to add comment. It was probably our fault :("
    end
  
    redirect_to @group
  end
  
  def update
    @group = Group.find(params[:group_id])
    @comment = Comment.find(params[:comment_id])
    if @comment.update_attributes(params[:comment])
      flash[:notice] = "Successfully updated comment."
    else
      flash[:notice] = "Failed to update comment..hm"
    end
    
    redirect_to @group
  end
  
  def destroy
    @group = Group.find(params[:group_id])
    @comment = Comment.find(params[:comment_id])
    # @comment.deleted = true
    if @comment.destroy
      flash[:notice] = "Successfully destroyed comment."
    else
      flash[:notice] = "Failed to destroy comment..hm"
    end
    
    redirect_to @group  
  end
end
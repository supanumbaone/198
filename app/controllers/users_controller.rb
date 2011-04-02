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
  
  def download
    if params[:export_type] == "user"
      @object = User.export_object
      file_name = "user_list_#{Time.now.strftime("%m.%d.%Y")}.txt"
    else
      @object = Schedule.export_object
      file_name = "schedule_#{Time.now.strftime("%m.%d.%Y")}.txt"
    end
    
    # Rendering and writing the export html doc
    # Saves html docs to /public/exports
    export_path = "#{Rails.root}/public/exports/" + file_name
    data = render_to_string(:action => "export_object", :layout => "export")
    File.open(export_path, "w"){|f| f << data }
    
    # Using X-Accel-Redirect for download management
    # Content-Disposition options:
    #   attachment = stream download
    #   inline = display contents of download in browser
    # response.headers['Content-Type'] = "text/plain"
    # response.headers['Content-Disposition'] = "attachment; filename=user_list_#{Time.now.strftime("%m.%d.%Y")}.txt"
    # response.headers['X-Accel-Redirect'] = "/public/exports/" + file_name
    # render :nothing => true
    
    # User send_file when running app locally
    send_file "#{export_path}", :type => "text/plain"
  end
  
  # render_to_string() requires there to be an :action parameter
  # this is that parameter
  def export_object
  end
end

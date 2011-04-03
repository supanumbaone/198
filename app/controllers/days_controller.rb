class DaysController < ApplicationController
  load_and_authorize_resource
  
  def index
    @days = Day.all
  end

  def show
    @day = Day.find(params[:id])
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.new(params[:day])
    if @day.save
      redirect_to @day, :notice => "Successfully created day."
    else
      render :action => 'new'
    end
  end

  def edit
    @day = Day.find(params[:id])
  end

  def update
    @day = Day.find(params[:id])
    if @day.update_attributes(params[:day])
      redirect_to @day, :notice  => "Successfully updated day."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to days_url, :notice => "Successfully destroyed day."
  end
end

class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      render :greeting
    end
  end

  def destroy
    session[:name] = nil
    redirect_to sessions_new_path
  end

end

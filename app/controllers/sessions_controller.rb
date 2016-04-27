class SessionsController < ApplicationController
  def new
  end
  
  
  #removed .downcase and changed email to name
  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password]).first
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid name/password combination'

      render 'new'
    end
  end
end

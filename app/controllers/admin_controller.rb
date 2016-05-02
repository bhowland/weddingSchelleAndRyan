class AdminController < ApplicationController
  
  def index
    @invitee = Invitee.all
  end
  
  def admin
    @invitee = Invitee.all
  end
  
  def show
    @invitee = Invitee.find(params[:id])
  end

  def destroy
    @id = Invitee.find_by(params[:id])
    @invitee = Invitee.find_by(params[@id])
    @invitee.destroy
    redirect_to request.referrer
  end
 
end
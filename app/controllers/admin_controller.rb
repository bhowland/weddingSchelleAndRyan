class AdminController < ApplicationController
    
  def admin
    @invitee = Invitee.all
  end
  
  def show
    @invitee = Invitee.find(params[:id])
  end
end
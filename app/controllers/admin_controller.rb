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
end
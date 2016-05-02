class AdminController < ApplicationController
  
  # def index
  #   @invitee = Invitee.all
  # end
  
  def admin
    @invitee = Invitee.all
  end
  
  def show
    @invitee = Invitee.find(params[:id])
  end


  def destroy

    @invitee = Invitee.find_by(params[:id])
    @invitee.destroy
    redirect_to admin_path
  end
####################################################################
  
  def new
    @invitee = Invitee.new
  end

  
  def show
    @invitee = Invitee.find(params[:id])
  end
  
  def edit
    @invitee = Invitee.find(params[:id])
  end


end
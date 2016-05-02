class ResponseController < ApplicationController

  def show
    @invitee = Invitee.find(params[:id])
  end
  
  def new
    @invitee = Invitee.new
    create if request.post?
  end

  def create
    
    @invitee = Invitee.create(params[:invitee])
    redirect_to request.referrer
    
  end

end
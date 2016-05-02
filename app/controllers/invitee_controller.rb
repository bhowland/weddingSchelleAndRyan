class InviteeController < ApplicationController
  
  def index
    
  end
  
  def admin
    
  end
  
  def show
   
  end
  
  def destroy
    Invitee.find(params[:id]).destroy
    redirect_to request.referrer
  end
  
 end
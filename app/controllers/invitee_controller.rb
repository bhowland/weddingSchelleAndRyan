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
  
  def create
   # @id = Invitee.find_by(params[:invitee])
    @invitee = Invitee.create(db)
    redirect_to request.referrer
    
  end



  def db
    
    params.permit(:name_on_invite, :invitees_present, :plus_ones, :dressed_in_garb, :phone, :email)

    
  end


end
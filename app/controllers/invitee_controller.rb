class InviteeController < ApplicationController
  

  
  def destroy
    Invitee.find(params[:id]).destroy
    redirect_to request.referrer
  end
  
  def create
    @invitee = Invitee.create(db)
    redirect_to request.referrer 
  end

  def db
    params.permit(:name_on_invite, :invitees_present, :plus_ones, :dressed_in_garb, :phone, :email)
  end
end
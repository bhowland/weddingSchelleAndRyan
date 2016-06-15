class InviteeController < ApplicationController
  
  def new 
    @invitee = Invitee.new
  end

  def show 
  end
  
  def destroy
    Invitee.find(params[:id]).destroy
    redirect_to request.referrer
  end
  
  def create
    @invitee = Invitee.new(db)
      if @invitee.save 
        redirect_to request.referrer, :flash => { :notice => 'Yay you are in if you want to change something you must contact us' }
      else        
        redirect_to request.referrer , :flash => { :notice => 'Sorry there was an error'  }
    end
  end

  def db
    params.require(:invitee).permit(:name_on_invite, :invitees_present, :plus_ones, :dressed_in_garb, :phone, :email, :timestamps)
  end
end
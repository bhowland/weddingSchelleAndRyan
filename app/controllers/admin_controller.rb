class AdminController < ApplicationController
  
  def invitee 
  end

  # def create
  #   #render new
  #   #@invitee = Invitee.all
  #   #redirect_to @invitee
  # end
  
  # def index
  # end
  
  
  
  
# begin   
#   def new
#     @invitee = Invitee.new
#     create if request.post?
#   end
  
#   def create
#     @invitee = Invitee.create(params[:invitee])
#     redirect_to :action => 'edit', :id => @invitee.id
#   end
  
#   def edit
#     @invitee = Invitee.find(params[:id])
    
#     if request.post?
#       @invitee.update_attributes(params[:invitee])
#       redirect_to :action => 'edit', :id => @invitee.id and return
#     end
    
#       render :action => 'new'
#   end
  
#   def delete
    
#   end
# end    
  
end
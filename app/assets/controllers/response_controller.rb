class ResponseController < ApplicationController

	def rsvp
	end

	def new
	  @invitee = Invitee.new
	  create if request.post?
	end

	def create
	@invitee = Invitee.create(params[:invitee])
	redirect_to :action => 'edit'
	end

	def edit
	  @invitee = Invitee.find(params[:id])
		if request.post?
		  @invitee.update_attributes(params[:invitee])
		  redirect_to :action => 'edit'
		end
	  render :action => 'new'
	end

def show
  @invitee = Invitee.find(params[:id])
end

def new
  @invitee = Invitee.new
  create if request.post?
end

def create

@invitee = Invitee.create(params[:invitee])
redirect_to :action => 'edit'

end

def edit
  @invitee = Invitee.find(params[:id])

if request.post?
  @invitee.update_attributes(params[:invitee])
  redirect_to :action => 'edit'
end

  render :action => 'new'
end

>>>>>>> 35b7a120f1cf41bdc13989a47e2deb462a196cb0
end
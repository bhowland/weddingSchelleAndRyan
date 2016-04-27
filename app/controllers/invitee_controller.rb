class InviteesController < ApplicationController
  def new
    @invitee = Invitee.all
  end
end

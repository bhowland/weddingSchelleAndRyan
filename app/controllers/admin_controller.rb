class AdminController < ApplicationController
  
  force_ssl
  http_basic_authenticate_with :name => "Ben", :password => "sample"

  def admin
    @invitee = Invitee.all
  end
  
  def show
    @invitee = Invitee.find(params[:id])
  end
end
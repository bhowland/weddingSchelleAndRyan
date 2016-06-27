class AdminController < ApplicationController
  
  #force_ssl
  before_filter :authenticate

  def authenticate
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      username == 'admin' && password == 'password'
    end
  end

  def admin
    @invitee = Invitee.all
  end
  
  def show
    @invitee = Invitee.find(params[:id])
  end
end
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  include Hobo::Controller::AuthenticationSupport
  before_filter :except => [:login, :forgot_password, :reset_password, :do_reset_password] do
   login_required unless User.count == 0
  end

end

class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def current_user_is_admin
     return false if current_user.nil?
     
     #XXX FIXME Roles are improperly filled!
     return true if current_user.role.nil?
  end
end

class HomeController < ApplicationController
    layout "home"
    
  def index
    #Current user info
    if current_user
        @username = current_user.email
        @userid = current_user.id
    else
        redirect_to new_user_session_path, notice: 'You are not logged in.'
    end
    
    #Subject info
    @subjects = Subject.where(user_id: @userid)
    
    #Assignment info
    @assignments = Assignment.where(user_id: @userid)
    
    
  end
  
end

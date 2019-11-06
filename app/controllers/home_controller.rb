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
  
  def assignment
      @assignment = Assignment.find(params[:id])
      
      #Finding Questions in Assignment
      @question = Question.where(assignment_id: @assignment.id)
      
      #Creating new instance of UserQuestionChoice
      #@user_choice = UserQuestionChoice.new
  end
  
  def result
      @params = params[:choice] 
  end
  
  def calculate
  end
  
end

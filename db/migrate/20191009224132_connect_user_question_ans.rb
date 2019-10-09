class ConnectUserQuestionAns < ActiveRecord::Migration[5.2]
  def change
      add_reference :user_question_ans, :question, foreign_key: true
  end
end

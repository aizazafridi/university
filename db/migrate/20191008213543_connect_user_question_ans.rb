class ConnectUserQuestionAns < ActiveRecord::Migration[5.2]
  def change
      add_reference :user_question_ans, :questions, foreign_key: true
      add_reference :user_question_ans, :users, foreign_key: true
      add_reference :user_question_ans, :question_choices, foreign_key: true
  end
end

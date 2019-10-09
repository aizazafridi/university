class ConnectQuestionChoices < ActiveRecord::Migration[5.2]
  def change
      add_reference :question_choices, :question, foreign_key: true
  end
end

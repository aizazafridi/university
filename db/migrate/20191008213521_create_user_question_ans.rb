class CreateUserQuestionAns < ActiveRecord::Migration[5.2]
  def change
    create_table :user_question_ans do |t|
      t.string :is_right

      t.timestamps
    end
  end
end

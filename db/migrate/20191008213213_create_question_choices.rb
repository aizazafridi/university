class CreateQuestionChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :question_choices do |t|
      t.string :choice
      t.boolean :is_right_choice

      t.timestamps
    end
  end
end

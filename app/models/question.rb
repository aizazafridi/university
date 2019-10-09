class Question < ApplicationRecord
    has_many :question_choices
    belongs_to :assignment
    has_one :user_question_ans
end

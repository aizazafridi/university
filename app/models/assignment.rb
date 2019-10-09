class Assignment < ApplicationRecord
    belongs_to :subject
    belongs_to :user
    has_many :questions
end

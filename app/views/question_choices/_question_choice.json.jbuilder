json.extract! question_choice, :id, :choice, :is_right_choice, :created_at, :updated_at
json.url question_choice_url(question_choice, format: :json)

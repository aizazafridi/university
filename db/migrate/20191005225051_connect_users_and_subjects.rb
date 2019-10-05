class ConnectUsersAndSubjects < ActiveRecord::Migration[5.2]
  def change
      add_reference :subjects, :users, foreign_key: true
  end
end

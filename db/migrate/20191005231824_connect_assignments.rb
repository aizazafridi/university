class ConnectAssignments < ActiveRecord::Migration[5.2]
  def change
      add_reference :assignments, :subjects, foreign_key: true
      add_reference :assignments, :users, foreign_key: true
  end
end

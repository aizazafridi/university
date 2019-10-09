class ConnectQuestion < ActiveRecord::Migration[5.2]
  def change
      add_reference :questions, :assignment, foreign_key: true
  end
end

class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :total_marks
      t.integer :obtained_marks

      t.timestamps
    end
  end
end

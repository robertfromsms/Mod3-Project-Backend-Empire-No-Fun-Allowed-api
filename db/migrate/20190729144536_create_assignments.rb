class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.boolean :status
      t.string :comment
      t.belongs_to :personnel, foreign_key: true
      t.belongs_to :duty, foreign_key: true

      t.timestamps
    end
  end
end

class CreateDuties < ActiveRecord::Migration[5.2]
  def change
    create_table :duties do |t|
      t.string :location
      t.string :description
      t.belongs_to :personnel, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePersonnels < ActiveRecord::Migration[5.2]
  def change
    create_table :personnels do |t|
      t.string :name
      t.string :email
      t.string :pic_url
      t.string :role
      t.string :bio

      t.timestamps
    end
  end
end

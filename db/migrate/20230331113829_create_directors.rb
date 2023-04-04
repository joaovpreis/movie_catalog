class CreateDirectors < ActiveRecord::Migration[7.0]
  def change
    create_table :directors do |t|
      t.string :name, null: false
      t.string :nationality, null: false
      t.date :birthdate, null: false
      t.string :favorite_genre, null: false
      t.timestamps
    end
  end
end

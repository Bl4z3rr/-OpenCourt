class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.integer :num_of_players
      t.integer :duration
      t.text :description
      t.string :date
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

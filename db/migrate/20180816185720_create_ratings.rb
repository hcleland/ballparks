class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :stadium
      t.integer :seats
      t.integer :concessions
      t.integer :amenities
      t.integer :location
      t.text :notes

      t.timestamps
    end
  end
end

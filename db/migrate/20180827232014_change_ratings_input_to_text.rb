class ChangeRatingsInputToText < ActiveRecord::Migration[5.2]
  def change
    change_column :ratings, :stadium, :string
    change_column :ratings, :seats, :string
    change_column :ratings, :concessions, :string
    change_column :ratings, :amenities, :string
    change_column :ratings, :location, :string
  end
end

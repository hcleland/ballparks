class ChangeRatingsInputFromStringToText < ActiveRecord::Migration[5.2]
  def change
    change_column :ratings, :stadium, :text
    change_column :ratings, :seats, :text
    change_column :ratings, :concessions, :text
    change_column :ratings, :amenities, :text
    change_column :ratings, :location, :text
  end
end

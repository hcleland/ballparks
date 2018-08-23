class AddBallparkIDtoRatingsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :ballpark_id, :integer
  end
end

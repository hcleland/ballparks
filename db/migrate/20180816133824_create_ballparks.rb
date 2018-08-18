class CreateBallparks < ActiveRecord::Migration[5.2]
  def change
    create_table :ballparks do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :market
      t.string :team_name
      t.string :league
      t.string :logo

      t.timestamps
    end
  end
end

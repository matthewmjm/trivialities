class CreateLeaderboardsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :leaderboards do |t|
      t.string :category
      t.string :difficulty
      t.string :type
      t.integer :score
      t.timestamps
    end
  end
end

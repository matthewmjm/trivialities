class CreateLeaderboardsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :leaderboards do |t|
      t.references :user, foreign_key: true
      t.references :score, foreign_key: true
      t.integer :game_score
      t.timestamps
    end
  end
end

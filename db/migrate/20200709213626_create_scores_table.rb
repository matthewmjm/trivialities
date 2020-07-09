class CreateScoresTable < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.string :category
      t.string :difficulty
      t.string :type
      t.integer :length
      t.timestamps
    end
  end
end

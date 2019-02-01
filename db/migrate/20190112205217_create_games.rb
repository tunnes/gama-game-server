class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.timestamps
      t.integer :score, default: 0
    end
  end
end

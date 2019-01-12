class CreateGameQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :game_questions do |t|
      t.references :game, foreign_key: true
      t.references :question, foreign_key: true
      t.string :answer
      t.timestamps
    end
  end
end

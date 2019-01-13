module GameService
  class Calculator
    class << self
      def perform(game_id)
        @game = Game.find_by(id: game_id)
        game_score if @game.present?
      end

      private

      def game_score
        ActiveRecord::Base.connection.select_one(
          <<-SQL
            SELECT COUNT(*) AS score
            FROM game_questions
            INNER JOIN questions
                  ON questions.id = game_questions.question_id
                  AND questions.answer = game_questions.answer
                  AND game_questions.game_id = #{@game.id}
          SQL
        )
      end
    end
  end
end

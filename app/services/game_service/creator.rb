module GameService
  class Creator
    class << self
      def perform
        Game.new(game_questions_attributes: game_questions)
      end

      private

      def game_questions
        questions = Question.all.sample(10)
        questions.sort.map { |question| { question_id: question.id } }
      end
    end
  end
end

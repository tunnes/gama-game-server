module GameService
  class Answer
    class << self
      def perform(options = {})
        @options = options
        game_question = find_game_question
        game_question.try(:assign_attributes, answer: @options[:answer])
        game_question
      end

      private

      def find_game_question
        GameQuestion.includes(:question).find_by(id: @options[:id])
      end
    end
  end
end

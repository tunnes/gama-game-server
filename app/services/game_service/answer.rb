module GameService
  class Answer
    class << self
      def perform(options = {})
        @options = options
        @game_question = game_question
        update_game_question if @game_question.present?
      end

      private

      def update_game_question
        @game_question.try(:assign_attributes, answer: @options[:answer])
        @game_question.game.increment!(:score) if correct_answer?
        @game_question
      end

      def correct_answer?
        @game_question.question.answer.eql?(@options[:answer])
      end

      def game_question
        join_opts = %i[game question]
        select_opts = { id: @options[:id] }
        GameQuestion.includes(join_opts).find_by(select_opts)
      end
    end
  end
end

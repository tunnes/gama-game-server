module GameService
  class Calculator
    class << self
      def perform(game_id)
        game = Game.find_by(id: game_id)
        game.as_json(only: :score) if game.present?
      end
    end
  end
end

module GameService
  class Loader
    class << self
      def perform(game_id)
        Game.includes(:game_questions).find_by(id: game_id)
      end
    end
  end
end

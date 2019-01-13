require 'rails_helper'

RSpec.describe GameService::Calculator do
  let(:game) { create(:game, :with_correct_game_questions) }
  let(:random_score) { Faker::Number.between(0, 10) }
  let(:random_game) { create(:game, :with_correct_game_questions, count: random_score) }

  context '#perform' do
    it '- With 10 score.' do
      data = GameService::Calculator.perform(game.id)
      expect(data['score']).to be_eql(10)
    end

    it '- With random score.' do
      data = GameService::Calculator.perform(random_game.id)
      expect(data['score']).to be_eql(random_score)
    end
  end
end

require 'rails_helper'

RSpec.describe GameService::Answer do
  let(:random_answer) { Faker::Number.between(1, 4) }
  let(:game_question) { create(:game_question) }

  context '#perform' do
    it '- Return GameQuestion instance.' do
      data = GameService::Answer.perform(answer: random_answer, id: game_question.id)
      expect(data).to be_kind_of(GameQuestion)
    end

    it '- With valid answer.' do
      data = GameService::Answer.perform(answer: random_answer, id: game_question.id)
      expect(data.valid?).to be_truthy
    end

    it '- With invalid answer.' do
      data = GameService::Answer.perform(answer: nil, id: game_question.id)
      expect(data.valid?).to be_falsey
    end

    it '- When GameQuestion not exist.' do
      dataa = GameService::Answer.perform(id: 865454)
      expect(dataa).to be_nil
    end
  end
end

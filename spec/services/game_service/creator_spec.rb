require 'rails_helper'

RSpec.describe GameService::Creator do
  subject { GameService::Creator.perform }

  context '#perform' do
    it '- Return an game.' do
      expect(subject).to be_kind_of(Game)
    end

    it '- Return an new game with 10 questions.' do
      expect(subject.game_questions.size).to be_eql(10)
    end
  end
end

require 'rails_helper'

RSpec.describe GameService::Loader do
  let(:game) { create(:game) }

  it '#perform' do
    data = GameService::Loader.perform(game.id)
    expect(data).to be_kind_of(Game)
  end
end

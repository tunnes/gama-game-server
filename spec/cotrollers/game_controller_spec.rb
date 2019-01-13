require 'rails_helper'

RSpec.describe GameController, type: :controller do
  let(:game) { create :game }

  context '#index' do
    it '- 200' do
      get :show, params: { id: game.id }
      expect(response).to have_http_status(200)
    end

    it '- 404' do
      get :show, params: { id: 0 }
      expect(response).to have_http_status(404)
    end
  end

  context '#create' do
    it '- 201' do
      post :create
      expect(response).to have_http_status(201)
    end
  end

  context '#calculate' do
    it '- 200' do
      get :calculate, params: { game_id: game.id }
      expect(response).to have_http_status(200)
    end

    it '- 404' do
      get :calculate, params: { game_id: 0 }
      expect(response).to have_http_status(404)
    end
  end
end

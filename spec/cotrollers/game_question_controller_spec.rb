require 'rails_helper'

RSpec.describe GameQuestionController, type: :controller do
  let(:random_answer) { Faker::Number.between(1, 4) }
  let(:game_question) { create :game_question }

  context '#update' do
    it '- 200' do
      get :update, params: { id: game_question.id, answer: random_answer  }
      expect(response).to have_http_status(200)
    end

    it '- 422' do
      get :update, params: { id: game_question.id, answer: nil }
      expect(response).to have_http_status(422)
    end

    it '- 404' do
      get :update, params: { id: 0 }
      expect(response).to have_http_status(404)
    end
  end
end

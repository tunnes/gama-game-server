require 'rails_helper'

RSpec.describe QuestionController, type: :controller do
  let(:question) { create :question }

  context '#index' do
    it '- 200' do
      get :show, params: { id: question.id }
      expect(response).to have_http_status(200)
    end

    it '- 404' do
      get :show, params: { id: 0 }
      expect(response).to have_http_status(404)
    end
  end
end

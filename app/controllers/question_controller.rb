class QuestionController < ApplicationController
  def show
    if question
      render json: question.as_json(except: :answer), status: :ok
    else
      render json: nil, status: :not_found
    end
  end

  private

  def question
    @question ||= Question.find_by(id: params[:id])
  end
end

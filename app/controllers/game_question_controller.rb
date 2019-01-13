class GameQuestionController < ApplicationController
  def update
    if answer.blank?
      render json: nil, status: :not_found
    elsif answer.valid?
      answer.save!
      render json: answer.as_json, status: :ok
    else
      render json: answer.errors.as_json, status: :unprocessable_entity
    end
  end

  private

  def answer
    @answer ||= GameService::Answer.perform(params)
  end
end

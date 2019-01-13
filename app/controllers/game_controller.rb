class GameController < ApplicationController
  def show
    if loader
      render json: loader.as_json(include: :game_questions), status: :ok
    else
      render json: nil, status: :not_found
    end
  end

  def create
    if creator.valid?
      creator.save!
      render json: creator.as_json(include: :game_questions), status: :created
    else
      render json: creator.errors.as_json, status: :unprocessable_entity
    end
  end

  def calculate
    if calculator
      render json: calculator.as_json, status: :ok
    else
      render json: nil, status: :not_found
    end
  end

  private

  def calculator
    @calculator ||= GameService::Calculator.perform(params[:game_id])
  end

  def creator
    @creator ||= GameService::Creator.perform
  end

  def loader
    @loader ||= GameService::Loader.perform(params[:id])
  end
end

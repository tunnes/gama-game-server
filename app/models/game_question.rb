class GameQuestion < ApplicationRecord
  # Associations
  belongs_to :game
  belongs_to :question

  # Validations
  validates :answer, presence: true, on: :update
end

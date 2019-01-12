class Game < ApplicationRecord
  # Associations
  has_many :game_questions, dependent: :destroy

  # Validations
  validates_length_of :game_questions, maximum: 10
end

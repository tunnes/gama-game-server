class Game < ApplicationRecord
  # Associations
  has_many :game_questions, dependent: :destroy
  accepts_nested_attributes_for :game_questions

  # Validations
  validates :game_questions, length: { maximum: 10 }
end

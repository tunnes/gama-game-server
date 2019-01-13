FactoryBot.define do
  factory :game_question do
    game
    question
    answer { Faker::Number.between(1, 4) }

    trait :correct_answers do
      answer { question.answer }
    end
  end
end

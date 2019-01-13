FactoryBot.define do
  factory :game do
    trait :with_game_questions do
      game_questions { create_list(:game_question, 10) }
    end

    trait :with_correct_game_questions do
      transient { count { 10 } }
      game_questions { create_list(:game_question, count, :correct_answers) }
    end
  end
end

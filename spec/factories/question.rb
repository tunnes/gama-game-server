FactoryBot.define do
  factory :question do
    title { Faker::Book.title }
    category { Faker::Book.genre }
    option1 { Faker::Book.publisher }
    option2 { Faker::Book.publisher }
    option3 { Faker::Book.publisher }
    option4 { Faker::Book.publisher }
    answer { Faker::Number.between(1, 4) }
  end
end

FactoryBot.define do
  factory :profile do
    title { Faker::Lorem.sentence }
    self_introduction { Faker::Lorem.paragraphs }
    price { Faker::Number.between(from: 300, to: 9_999_999) }
    association :user
  end
end

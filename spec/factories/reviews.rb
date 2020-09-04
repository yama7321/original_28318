FactoryBot.define do
  factory :review do
    content {Faker::Lorem.sentence}
    valuation {5}
    association :user
    association :profile
  end
end

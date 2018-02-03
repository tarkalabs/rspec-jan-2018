FactoryBot.define do
  factory :folder do
    user
    name Faker::Name.name
    size Faker::Number.between(10, 100)
  end
end

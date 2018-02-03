require 'faker'
FactoryBot.define do
  factory :folder, class: Folder do
    name Faker::Name.name
    size Faker::Number.number(4)
    user
  end
  factory :folder_without_user, class: Folder do
    name Faker::Name.name
    size Faker::Number.number(4)
  end
end

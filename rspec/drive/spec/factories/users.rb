require 'faker'
FactoryBot.define do
  factory :user do
    name Faker::Name.name
  end


  # factory :following do
  #   follower_id :user
  #   user_id :user
  # end

end

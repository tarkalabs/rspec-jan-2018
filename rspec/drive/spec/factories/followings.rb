FactoryBot.define do
  factory :following do
    follower_id { create(:user).id }
    # user_id  { create(:user).id }
    user
  end
end

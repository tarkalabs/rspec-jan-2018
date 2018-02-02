FactoryBot.define do
  factory :following do
    user
    follower_id {create(:user).id}
    # user_id FactoryBot.user.id
  end
end

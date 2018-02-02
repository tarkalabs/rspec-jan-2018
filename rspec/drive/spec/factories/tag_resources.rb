FactoryBot.define do
  factory :tag_resource do
    # tag_id create(:tag).id
    # tag tag
    tag
    resource document
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) {FactoryBot.create(:user)}

  describe "Associations" do
    it { should have_many(:folders) }
    it { should have_many(:shares) }
  end

  describe "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end
end

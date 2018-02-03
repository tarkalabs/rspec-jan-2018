require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      FactoryBot.create(:user),
      FactoryBot.create(:user1)
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => FactoryBot.attributes_for(:user)[:name]
    assert_select "tr>td", :text => FactoryBot.attributes_for(:user1)[:name]
  end
end

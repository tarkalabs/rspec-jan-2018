require 'rails_helper'

describe "User crud operations", :type => :feature do
  let(:user) {FactoryBot.create(:user)}

  it "Create a user" do
    visit '/users'
    click_link 'New User'
    user_name = Faker::Name.name
    user_email = Faker::Internet.email
    within("#user_form") do
      fill_in 'user_name', with: user_name
      fill_in 'user_email', with: user_email
    end
    click_button 'Create User'
    expect(page).to have_content "User was successfully created."
    expect(page).to have_content user_name
    expect(page).to have_content user_email
  end

  it "Update a user" do
    visit '/users'
    click_link 'New User'
    user_name = Faker::Name.name
    user_email = Faker::Internet.email
    within("#user_form") do
      fill_in 'user_name', with: user_name
      fill_in 'user_email', with: user_email
    end
    click_button 'Create User'

    click_link("Edit")
    user_updated_name = Faker::Name.name
    user_updated_email = Faker::Internet.email
    within("#user_form") do
      fill_in 'user_name', with: user_updated_name
      fill_in 'user_email', with: user_updated_email
    end
    click_button 'Update User'
    expect(page).to have_content "User was successfully updated."
    expect(page).to have_content user_updated_name
    expect(page).to have_content user_updated_email
  end

  it "Delete a user" do
    user
    visit '/users'
    within("#user_#{user.id}") do
      page.accept_confirm do
        click_link 'Destroy'
      end
    end
    expect(page).to have_content "User was successfully destroyed."
    expect(page).to have_no_content user.name
  end
end

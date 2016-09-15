require 'rails_helper'

describe "the delete an image process" do
  it "deletes an image from db" do
    user = FactoryGirl.create(:user)
    image = FactoryGirl.create(:image, user_id: user.id)
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', :with => 'test@email.com'
    fill_in 'Password', :with => 'password'
    click_button "Log in"
    click_link "In Bread Kitty"
    click_link "Delete"
    expect(page).to have_content 'Katstagram'
  end
end

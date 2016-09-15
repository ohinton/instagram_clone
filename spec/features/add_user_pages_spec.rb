require 'rails_helper'

describe "the add a user process" do
  it "adds a new user" do
    visit new_user_registration_path
    fill_in 'Email', :with => 'test@email.com'
    fill_in 'Password', :with => 'test password'
    fill_in 'Password confirmation', :with => 'test password'
    click_on 'Sign up'
    expect(page).to have_content 'Welcome'
  end

  it "gives error when no title is entered" do
    visit new_user_registration_path
    click_on 'Sign up'
    expect(page).to have_content 'errors'
  end
end

require 'rails_helper'

describe 'the edit user process' do
  it "should edit the user information" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit root_path
    click_link 'Edit Account'
    fill_in 'Email', :with => 'new@email.com'
    fill_in 'Current password', :with => 'password'
    click_button 'Update'
    expect(page).to have_content 'Your account has been updated successfully.'
  end
end

#   it "should not edit the account information if a parameter is not entered" do
#     user = FactoryGirl.create(:user)
#     account = FactoryGirl.create(:account, user_id: user.id)
#     login_as(user, :scope => :user)
#     visit account_path(account)
#     click_on 'Edit Profile'
#     fill_in 'Name', :with => ''
#     fill_in 'Zodiac', :with => ''
#     click_on 'Update Account'
#     expect(page).to have_content 'Edit Profile'
#   end
# end

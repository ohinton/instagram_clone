describe 'upload an image' do

  it 'uploads a selected image' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', :with => 'test@email.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log in'    
    click_link 'New Image'
    fill_in 'Caption', :with => 'InBread Cat'
    page.attach_file("Photo", 'spec/fixtures/images/inbread-cat.jpg')
    click_button 'Create Image'
    expect(page).to have_content 'InBread Cat'
  end

end

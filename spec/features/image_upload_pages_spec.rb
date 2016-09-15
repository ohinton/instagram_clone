describe 'upload an image' do

  it 'uploads a selected image' do
    visit root_path
    click_link 'Sign In'
    click_link 'Sign up'
    fill_in 'Email', :with => 'test@email.com'
    fill_in 'Password', :with => 'password1'
    fill_in 'Password confirmation', :with => 'password1'
    click_button 'Sign up'
    click_link 'New Image'
    fill_in 'Caption', :with => 'InBread Cat'
    page.attach_file("Photo", 'spec/fixtures/images/inbread-cat.jpg')
    click_button 'Create Image'
    expect(page).to have_content 'InBread Cat'
  end

end

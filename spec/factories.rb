FactoryGirl.define do
  factory(:user) do
    email('test@email.com')
    password('password')
    password_confirmation('password')
  end
end

FactoryGirl.define do
  factory(:image) do
    caption 'In Bread Kitty'
    photo_file_name 'inbread-cat.jpg'
  end
end

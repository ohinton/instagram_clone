FactoryGirl.define do
  factory(:user) do
    email('test@email.com')
    password('password')
    password_confirmation('password')
  end
end

FactoryGirl.define do
  factory(:image) do
    caption('In Bread Kitty')
  end
end

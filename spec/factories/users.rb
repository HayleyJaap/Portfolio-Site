FactoryBot.define do
  factory :user do
    email { 'test@gmail.com'}
    password { 'test123' }
    password_confirmation { 'test123' }
  end
end

def sign_in(user)
  click_on "Sign In"
  within("form") do
    fill_in "Email", with: "test@gmail.com"
    fill_in "Password", with: "test123"
  end
  click_button "Sign in"
end
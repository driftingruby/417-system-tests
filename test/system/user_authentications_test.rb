require "application_system_test_case"

class UserAuthenticationsTest < ApplicationSystemTestCase
  test "registers new user successfully" do
    visit new_user_registration_url
    fill_in "Email", with: "john.smith@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
    assert_text "Welcome! You have signed up successfully."
  end

  test "logs in successfully" do
    user = users(:one)
    visit root_url
    click_on "Sign In"
    fill_in "Email", with: user.email
    fill_in "Password", with: "password"
    click_on "Log in"
    assert_text "Signed in successfully."
  end
end

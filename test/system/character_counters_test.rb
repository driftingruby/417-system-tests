require "application_system_test_case"

class CharacterCountersTest < ApplicationSystemTestCase
  test "should see the count down of characters" do
    visit root_url
    assert_text "There are 280 characters remaining."
    find("textarea").fill_in with: "This is a test message!"
    assert_text "There are 257 characters remaining."
  end

  test "authenticated users should see the count down of characters" do
    user = users(:one)
    login_as(user.email)
    visit root_url
    assert_text "There are 280 characters remaining."
    find("textarea").fill_in with: "This is a test message!"
    assert_text "There are 257 characters remaining."
  end
end

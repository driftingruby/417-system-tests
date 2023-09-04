require "application_system_test_case"

class HelloWorldsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit hello_worlds_url
  #
  #   assert_selector "h1", text: "HelloWorld"
  # end

  test "should see the hello world" do
    visit root_url
    take_screenshot
    assert_text "Hello World"
  end
end

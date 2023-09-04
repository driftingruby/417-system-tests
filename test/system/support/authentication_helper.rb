module System
  module Support
    module AuthenticationHelper
      def login_as(email)
        visit new_user_session_path
        fill_in "Email", with: email
        fill_in "Password", with: "password"
        click_on "Log in"
        assert_text "Signed in successfully."
      end

      def register_as(email)
        visit new_user_registration_url
        fill_in "Email", with: email
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_on "Sign up"
        assert_text "Welcome! You have signed up successfully."
      end
    end
  end
end

require 'test_helper'

class UserCanSignUpTest < Capybara::Rails::TestCase
  setup do
  end

  test "User Can Sign Up" do
    visit root_path
    click_link "Sign In"
    click_link "Don't Have an Account? Sign up Here!"
    fill_in "Username", with: "TestUser"
    fill_in "Password", with: "TestUser"
    fill_in "user_password_confirmation", with: "TestUser"
    click_button "Create User"

    assert_content page, "Thanks for signing up TestUser!"
  end
end

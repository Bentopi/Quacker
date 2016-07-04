require 'test_helper'

class UserCanSignUpTest < Capybara::Rails::TestCase
  setup do
  user = User.create! username: "Testman", password: "12345678"
  user = Quack.create! body: "Hello TopDog", user_id: user.id
  followee =  User.create! username: "TopDog", password: "12345678"
  followee = Quack.create! body: "Hello Testman", user_id: followee.id
  end

  test "User Can Sign In and See Timeline" do
    visit root_path
    click_link "Sign In"
    fill_in "Username", with: "Testman"
    fill_in "Password", with: "12345678"
    click_button "Sign In"
    assert_content page, "Hello TopDog"
  end

  test "User can Follow another User and See Their Posts" do
    visit root_path
    click_link "Sign In"
    fill_in "Username", with: "Testman"
    fill_in "Password", with: "12345678"
    click_button "Sign In"
    click_link "Top Ducks"
    first('.list-unstyled').click_link('- Follow')
    click_link "Yxvney6"

    assert_content page, "Hello Testman"
  end

end

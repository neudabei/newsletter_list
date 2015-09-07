require 'spec_helper'

feature "User signs in" do
  background do
    User.create(name: "Bob", email: "email@domain.com", password: "password")
  end

  scenario "with existing username" do
    visit login_path
    fill_in "email", with: "email@domain.com"
    fill_in "password", with: "password"
    click_button "Login"
    page.should have_content "Welcome Bob, you've logged in."
  end

end
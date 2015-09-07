require 'spec_helper'

feature "User interacts with newsletter" do
  
  background do
    Category.create(name: "Bitcoin")
  end

  scenario "user creates new newsletter and votes on it" do
    newsletter = Fabricate(:newsletter)
    # sign in
    login
    # go to add newsletter
    click_link "Add newsletter"
    # fill out form and submit
    fill_in "newsletter[name]", with: "#{newsletter.name}"
    fill_in "newsletter[description]", with: "#{newsletter.description}"
    fill_in "newsletter[website_url]", with: "#{newsletter.website_url}"
    fill_in "newsletter[signup_url]", with: "#{newsletter.signup_url}"
    check("Bitcoin")
    click_button "Submit"
    # see newsletter is in index queue
    click_link "View newsletters"
    expect(page).to have_content("#{newsletter.name}")
    # vote on newsletter
    click_link "vote_#{newsletter.id}"
    expect(page).to have_content("1")

  end

end
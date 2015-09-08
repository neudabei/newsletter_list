require 'spec_helper'

feature "User interacts with newsletter" do
  
  background do
    Category.create(name: "Bitcoin")
  end

  scenario "user creates new newsletter and votes on it" do
    newsletter = Fabricate(:newsletter)
    # sign in
    login
    add_newsletter
    verify_newsletter_was_added
    vote_on_newsletter
  end

  def add_newsletter
    click_link "Add newsletter"
    fill_in "newsletter[name]", with: "#{newsletter.name}"
    fill_in "newsletter[description]", with: "#{newsletter.description}"
    fill_in "newsletter[website_url]", with: "#{newsletter.website_url}"
    fill_in "newsletter[signup_url]", with: "#{newsletter.signup_url}"
    check("Bitcoin")
    click_button "Submit"    
  end

  def verify_newsletter_was_added
    click_link "View newsletters"
    expect(page).to have_content("#{newsletter.name}")
  end

  def vote_on_newsletter
    click_link "vote_#{newsletter.id}"
    expect(page).to have_content("1")
  end
    
end
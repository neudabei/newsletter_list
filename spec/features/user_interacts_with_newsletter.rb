require 'spec_helper'

feature "User interacts with newsletter" do
  scenario "user creates new newsletter" do
    # sign in
    login
    # go to add newsletter
    click_link "Add newsletter"
    # fill out form and submit
    fill_in "newsletter[name]", with: "The great newsletter"
    fill_in "newsletter[description]", with: "This is what the newsletter is all about..."
    fill_in "newsletter[website_url]", with: "www.domainofnewsletter.com"
    fill_in "newsletter[signup_url]", with: "www.domainofnewsletter.com/signup"
    #check('newsletter_category_ids_6')
    #page.check("value='6'")
    find(:css, "for='newsletter_category_ids_7'").set(true)
    click_button "Submit"
    # see newsletter is in index queue
  end

  scenario "user votes on newsletter" do

  end

end
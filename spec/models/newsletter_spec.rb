require 'spec_helper'

# run $ rake:db:test:prepare if necessary

describe Newsletter do
  it "saves itself" do
    newsletter = Newsletter.create(name: "AVC", description: "A daily newsletter about tech, startups and VC", website_url: "www.avc.com")
    expect(Newsletter.first).to eq(newsletter)
  end
# In the above "saves itself" we are testig Rails and Active Record rather than the code we own. 

  it { should have_many (:categories) }
  it { should validate_presence_of (:name) }
  it { should validate_presence_of (:website_url) }
  it { should validate_uniqueness_of (:website_url)}


  # these tests are replaced by shoulda matchers above

  # it "belongs to a category" do
  #   vc_category = Category.create(name: "Venture Capital")
  #   newsletter = Newsletter.create(name: "AVC", description: "A daily newsletter about tech, startups and VC", website_url: "www.avc.com")
  #   newsletter.categories << vc_category
  #   expect(newsletter.categories).to eq(vc_category)
  # end

  # it "does not save a newsletter without a name" do
  #   newsletter = Newsletter.create(description: "A daily newsletter about tech, startups and VC", website_url: "www.avc.com")
  #   expect(Newsletter.count).to eq(0)
  # end

  # it "does not save a newsletter without a website_url" do
  #   newsletter = Newsletter.create(name: "AVC", description: "A newsletter about tech, startups and VC")
  #   expect(Newsletter.count).to eq(0)
  # end

  it "does check for uniqueness of website_url"
end


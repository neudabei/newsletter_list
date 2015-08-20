require 'spec_helper'

# run $ rake:db:test:prepare if necessary

describe Newsletter do
  it "saves itself" do
    newsletter = Newsletter.create(name: "AVC", description: "A daily newsletter about tech, startups and VC", website_url: "www.avc.com")
    expect(Newsletter.first).to eq(newsletter)
  end

  it "belongs to a category" do
    vc_category = Category.create(name: "Venture Capital")
    newsletter = Newsletter.create(name: "AVC", description: "A daily newsletter about tech, startups and VC", website_url: "www.avc.com")
    newsletter.categories << vc_category
    expect(newsletter.categories).to eq(vc_category)
  end
end
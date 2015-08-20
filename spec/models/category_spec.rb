require 'spec_helper'

describe Category do
  it "saves itself" do
    category = Category.new(name: "Venture Capital")
    category.save
    expect(Category.first).to eq(category)
  end

  it "has many newsletters through nl_categories" do
    vc_category = Category.create(name: "Venture Capital")
    avc = Newsletter.create(name: "AVC", description: "A daily newsletter about tech, startups and VC", website_url: "www.avc.com")
    md = Newsletter.create(name: "Mattermark Daily", description: "A daily newsletter about startups and VC funding", website_url: "www.mattermark.com")
    avc.categories << vc_category
    md.categories << vc_category

    expect(vc_category.newsletters).to include(avc, md)
  end

  it { should validate_presence_of (:name) }
  it { should validate_uniqueness_of (:name) }
  it { should have_many (:nl_categories) }
  it { should have_many (:newsletters) }

end
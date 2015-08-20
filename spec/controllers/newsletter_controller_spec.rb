require 'spec_helper'

describe NewslettersController do
  describe "GET index" do
    
    it "sets @newsletters" do
      newsletter1 = Fabricate(:newsletter)
      newsletter2 = Fabricate(:newsletter)
      newsletter3 = Fabricate(:newsletter)
      get :index
      expect(assigns(:newsletters)).to eq([newsletter1, newsletter2, newsletter3])
    end

    it "renders the index template"
      # https://relishapp.com/rspec/rspec-rails/v/2-99/docs/controller-specs
  end
end
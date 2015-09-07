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

    it "renders the index template" do
      newsletter1 = Fabricate(:newsletter)
      newsletter2 = Fabricate(:newsletter)
      newsletter3 = Fabricate(:newsletter)
      get :index
      expect(response).to render_template("index")
    end
  end


  describe "POST create" do
    before do
      newsletter = Fabricate(:newsletter)
    end

    context "with valid input" do

      it "creates the newsletter post" do
        expect(Newsletter.count).to eq(1)
      end

      it "redirects to the index page" do
        expect(response).to redirect_to newsletters_path
      end

    end

    context "with invalid input" do

      it "doesn't create the newsletter post" do
        expect(Newsletter.count).to eq(0)
      end

      it "renders the :new template" do
        expect(response).to render_template :new
      end

    end
  end
end
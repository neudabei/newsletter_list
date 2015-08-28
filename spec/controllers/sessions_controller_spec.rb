require 'spec_helper'

describe SessionsController do
  describe "GET new" do
    
    it "renders the new template for unauthenticated users" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "POST create" do
    context "with valid credentials" do
      let (:bob) {Fabricate(:user)}
      it "puts the signed in user in the session" do
        post :create, email: bob.email, password: bob.password
        expect(session[:user_id]).to eq(bob.id)
      end

      it "sets the notice" do
        post :create, email: bob.email, password: bob.password
        expect(flash[:notice]).not_to be_blank
      end

    end

    context "with invalid credentials" do
      let(:bob) {Fabricate(:user)}
      it "doesn't put the user in the session" do
        post :create, email: bob.email, password: "wrong_password"
        expect(session[:user_id]).to eq(nil)
      end

      it "redirects to the login page" do
        post :create, email: bob.email, password: "wrong_password"
        expect(response).to redirect_to login_path
      end

      it "sets the error message" do
        post :create, email: bob.email, pasword: "wrong_password"
        expect(flash[:error]).not_to be_blank
      end
    end
  end

  describe "GET destroy" do
    it "clears the session for the user" do
      session[:user_id] = Fabricate(:user).id
      get :destroy
      expect(session[:user_id]).to be_nil
    end

    it "redirects to the root path" do
      session[:user_id] = Fabricate(:user).id
      get :destroy
      expect(response).to redirect_to root_path
    end

    it "sets the notice" do
      session[:user_id] = Fabricate(:user)
      get :destroy
      expect(flash[:notice]).not_to be_blank
    end
    
  end
end
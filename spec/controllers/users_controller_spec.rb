require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  render_views
  

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET 'show'" do

    before(:each) do
      @user = FactoryGirl.create(:user)
    end

    it "devrait réussir" do
      get :show, :id => @user
      expect(response).to have_http_status(:success)
      
    end

    it "devrait trouver le bon utilisateur" do
      get :show, :id => @user
      
      expect(assigns(:user)).to eq(@user)
    end

    it "devrait inclure le nom de l'utilisateur" do
      get :show, :id => @user
      expect(response).to have_selector('title',:text => @user.nom)
    end

    #it "devrait avoir une image de profil" do
      #get :show, :id => @user
      #expect(response).to have_selector('img',:class => "gravatar")
      #response.should have_selector("h1>img", :class => "gravatar")
    #end
  end

end

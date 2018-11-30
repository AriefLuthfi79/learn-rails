require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { FactoryBot.build(:user) }

  describe "POST users#create" do
    subject { post :create, params: { user: { username: "Arief", email: "ariefluthfi@gmail.com", password: "oke" } } }

    it "should be response true" do
      response = user.save
      expect(response).to eq(true)
    end

    it "should be redirect to users_url" do
      expect(subject).to redirect_to(Rails.application.routes.url_helpers.users_path)
    end
  end

  describe "GET users#index" do
    let(:users) { FactoryBot.create_list(:user, 10) }

    it "should be get all users" do
      expect(users.size).to eq(10) 
    end

    it "should get status code 200" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "DESTROY users#destroy" do
   
  end
end

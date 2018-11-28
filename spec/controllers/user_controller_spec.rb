require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { FactoryBot.build(:user) }

  describe "POST data" do
    subject { post :create, params: { user: { username: "Arief", email: "ariefluthfi@gmail.com", password: "oke" } } }

    it "should be response true" do
      response = user.save
      expect(response).to eq(true)
    end

    it "should be redirect to users_url" do
      expect(subject).to redirect_to(Rails.application.routes.url_helpers.users_path)
    end
  end
end

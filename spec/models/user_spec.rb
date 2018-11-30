require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create_list(:user, 10) }

  it "has a valid factory" do
    build(:user).should be_valid
  end
end

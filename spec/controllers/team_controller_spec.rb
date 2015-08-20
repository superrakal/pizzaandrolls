require 'rails_helper'

RSpec.describe TeamController, :type => :controller do

  describe "GET vacancy" do
    it "returns http success" do
      get :vacancy
      expect(response).to be_success
    end
  end

  describe "GET workers" do
    it "returns http success" do
      get :workers
      expect(response).to be_success
    end
  end

  describe "GET gallery" do
    it "returns http success" do
      get :gallery
      expect(response).to be_success
    end
  end

end

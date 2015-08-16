require 'rails_helper'

RSpec.describe CallbackController, :type => :controller do

  describe "GET new_callback" do
    it "returns http success" do
      get :new_callback
      expect(response).to be_success
    end
  end

end

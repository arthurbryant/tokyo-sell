require 'rails_helper'

RSpec.describe "ItemDetails", type: :request do
  describe "GET /item_details" do
    it "works! (now write some real specs)" do
      get item_details_path
      expect(response).to have_http_status(200)
    end
  end
end

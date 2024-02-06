require 'rails_helper'

RSpec.describe "Resident::Dislikes", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/resident/dislikes/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/resident/dislikes/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end

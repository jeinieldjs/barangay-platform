require 'rails_helper'

RSpec.describe "Resident::Complaints", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/resident/complaints/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/resident/complaints/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/resident/complaints/create"
      expect(response).to have_http_status(:success)
    end
  end

end

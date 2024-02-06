require 'rails_helper'

RSpec.describe "Complaints", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/complaints/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/complaints/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/complaints/index"
      expect(response).to have_http_status(:success)
    end
  end

end

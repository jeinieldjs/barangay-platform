require 'rails_helper'

RSpec.describe "Admin::Complaints", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/admin/complaints/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/admin/complaints/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/admin/complaints/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/admin/complaints/show"
      expect(response).to have_http_status(:success)
    end
  end

end

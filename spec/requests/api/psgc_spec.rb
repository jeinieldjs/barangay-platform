require 'rails_helper'

RSpec.describe "Api::Psgcs", type: :request do
  describe "GET /fetch_provinces" do
    it "returns http success" do
      get "/api/psgc/fetch_provinces"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /fetch_cities_municipalities" do
    it "returns http success" do
      get "/api/psgc/fetch_cities_municipalities"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /fetch_barangays" do
    it "returns http success" do
      get "/api/psgc/fetch_barangays"
      expect(response).to have_http_status(:success)
    end
  end

end

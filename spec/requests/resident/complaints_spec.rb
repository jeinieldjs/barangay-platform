<<<<<<< HEAD:spec/requests/complaints_spec.rb
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
=======
require 'rails_helper'

RSpec.describe "Resident::Complaints", type: :request do
  include Devise::Test::IntegrationHelpers
  fixtures :users

  before do
    @user = users(:user2)
    sign_in @user
  end

  describe "GET /index" do
    it "returns http success" do
      get resident_complaints_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get new_resident_complaint_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "creates a new complaint" do
      post resident_complaints_path, params: { complaint: { subject: "Sample", description: "This is a sample complaint." } }
      expect(response).to have_http_status(:redirect)
    end
  end

end
>>>>>>> 2e9cca6750febd46432c749f3ddfa3e268892af2:spec/requests/resident/complaints_spec.rb

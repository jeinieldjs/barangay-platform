class Users::RegistrationsController < Devise::RegistrationsController
  before_action :set_locations, only: [:new, :create]

  private

  def set_locations
    response = PSGC::Client.fetch_provinces
    @provinces = response[:data].sort_by { |province| province["name"] }
  end
end

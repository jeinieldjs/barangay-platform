# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

5.times do |i|
    User.create!(
      first_name: "User#{i+1}",
      last_name: "Lastname#{i+1}",
      email: "user#{i+1}@example.com",
      complete_address: "Address#{i+1}",
      province: "Province#{i+1}",
      city_municipality: "City/Municipality#{i+1}",
      barangay: "Barangay#{i+1}",
      role: :resident,
      status: :approved,
      password: "password",
      password_confirmation: "password"
    )
end

admin_user = User.create!(
  first_name: "Admin",
  last_name: "User",
  email: "admin@example.com",
  complete_address: "Admin Address",
  province: "Admin Province",
  city_municipality: "Admin City/Municipality",
  barangay: "Admin Barangay",
  role: :admin,
  status: :approved,
  password: "adminpassword",
  password_confirmation: "adminpassword"
)
  
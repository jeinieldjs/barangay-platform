class Admin::DashboardController < ApplicationController

  def index
  end

  def create_admin_account
    admin = Admin.create!(
      email: "admin@example.com",
      password: "adminpassword",
      password_confirmation: "adminpassword"
    )
    if admin.persisted?
      flash[:notice] = "Admin account created successfully!"
      redirect_to admin_dashboard_path
    else
      flash[:alert] = "Failed to create admin account"
      redirect_to admin_dashboard_path
    end
  end
end

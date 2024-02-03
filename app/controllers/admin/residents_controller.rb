class Admin::ResidentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user, only: %i[show edit update destroy]
  
    def index
      @residents = User.where(role: :resident, barangay: current_user.barangay)
      @pending_users = User.where(role: :resident, status: 'pending', barangay: current_user.barangay)
    end
  
    def new
      @resident = User.new
    end
  
    def create
      @resident = User.new(resident_params)
      if @resident.save
        redirect_to admin_dashboard_path, notice: "Resident's account was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def show
    end
  
    def edit
    end
  
    def update
    end
  
    def destroy
      @user.destroy
      redirect_to admin_residents_path, notice: "Resident's account was successfully deleted."
    end
  
    private
  
    def set_user
      @user = User.find(params[:id])
    end
  
    def resident_params
      params.require(:user).permit(:id, :first_name, :last_name, :email, :password, :password_confirmation, :barangay, :province, :city_municipality, :role, :status)
    end
end
  
class Admin::ResidentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user, only: %i[show edit update destroy]
  
    def index
      @users = User.where(role: :resident, barangay: current_user.barangay)
      @pending_users = User.where(role: :resident, status: 'pending', barangay: current_user.barangay)
    end
  
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(resident_params)
      if @user.save
        redirect_to admin_residents_path, notice: "Resident's account was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def show
    end
  
    def edit
    end
  
    def update
      if params[:user][:password].blank?
        params[:user].delete(:password)
        params[:user].delete(:password_confirmation)
      end

      if @user.update(resident_params)
        redirect_to admin_residents_path, notice: "Resident's account was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
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
      params.require(:user).permit(:id, :first_name, :last_name, :email, :password, :password_confirmation, :complete_address, :barangay, :province, :city_municipality, :role, :status)
    end
end
  
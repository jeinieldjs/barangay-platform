class ComplaintsController < ApplicationController
  before_action :authenticate_user!

  def new
    @complaint = current_user.complaints.build
  end

  def create
    @complaint = current_user.complaints.build(complaint_params)

    if @complaint.save
      redirect_to root_path, notice: 'Complaint sent successfully.'
    else
      render :new
    end
  end

  private

  def complaint_params
    params.require(:complaint).permit(:message)
  end
end

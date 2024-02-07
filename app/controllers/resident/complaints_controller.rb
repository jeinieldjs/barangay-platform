class Resident::ComplaintsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @complaints = current_user.complaints
  end

  def new
    @complaint = Complaint.new
  end

  def create
    @complaint = current_uer.complaints.build(complaint_params)
    if @complaint.save
      redirect_to resident_complaints_path, notice: 'Complaint was reported to barangay admin.'
    else
      render :new, status: :unprocessable_entity
    end

  end

  private

  def complaint_params
    params.require(:complaint).permit(:subject, :content, :status)
  end

end

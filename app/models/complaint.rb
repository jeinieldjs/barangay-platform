class Complaint < ApplicationRecord
  belongs_to :user
  validates :subject, :description, presence: true
end

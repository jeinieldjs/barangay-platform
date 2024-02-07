class Complaint < ApplicationRecord
  belongs_to :user
  validates :subject, :content, presence: true
end

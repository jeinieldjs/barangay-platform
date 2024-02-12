<<<<<<< HEAD
class Complaint < ApplicationRecord
  belongs_to :user
end
=======
class Complaint < ApplicationRecord
  belongs_to :user
  validates :subject, :description, presence: true
  enum status: { pending: 'pending', resolved: 'resolved'}
end
>>>>>>> 2e9cca6750febd46432c749f3ddfa3e268892af2

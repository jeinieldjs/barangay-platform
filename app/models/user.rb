class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :email, :complete_address, :province, :city_municipality, :barangay, :role, :status, presence: true
  enum role: { admin: 'admin', resident: 'resident' }
  enum status: { pending: 'pending', approved: 'approved', rejected: 'rejected' }

  has_many :announcements
<<<<<<< HEAD
  has_many :posts, dependent: :destroy
  has_many :comments
  has_many :likes, dependent: :destroy
=======
  has_many :posts
  has_many :complaints

>>>>>>> 2e9cca6750febd46432c749f3ddfa3e268892af2
end

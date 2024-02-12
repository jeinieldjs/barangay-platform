class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :email, :complete_address, :province, :city_municipality, :barangay, :role, :status, presence: true
  enum role: { admin: 'admin', resident: 'resident' }
  enum status: { pending: 'pending', approved: 'approved', rejected: 'rejected' }

  has_many :announcements
  has_many :posts, dependent: :destroy
  has_many :comments
  has_many :likes, dependent: :destroy
end

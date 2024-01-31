class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :email, :complete_address, :province, :city_municipality, :barangay, :role, presence: true
  enum role: { admin: 'admin', resident: 'resident' }
end

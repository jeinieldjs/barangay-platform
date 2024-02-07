class Post < ApplicationRecord
  belongs_to :user
  validates :title, :content, presence: true
  validates_inclusion_of :anonymous, in: [true, false]
end

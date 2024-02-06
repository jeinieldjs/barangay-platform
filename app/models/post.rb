class Post < ApplicationRecord
  belongs_to :user
  validates_inclusion_of :anonymous, in: [true, false]
end

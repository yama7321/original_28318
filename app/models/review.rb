class Review < ApplicationRecord
  belongs_to :user
  belongs_to :profile

  validates :content, presence: true

end

class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  validates :content, length: { minimum: 20 }
end

class Chat < ApplicationRecord
  belongs_to :user
  belongs_to :room

  # validations
  validates :user_id, presence: true
  validates :room_id, presence: true
end

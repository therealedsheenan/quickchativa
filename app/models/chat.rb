class Chat < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  belongs_to :room
end

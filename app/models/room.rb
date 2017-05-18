class Room < ApplicationRecord
  has_many :chats
  belongs_to :user
  has_many :room_users
end

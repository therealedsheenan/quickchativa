class User < ApplicationRecord
  has_secure_password
  has_many :chats
  has_many :rooms
  has_many :room_user
end

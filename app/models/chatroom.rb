class Chatroom < ApplicationRecord
  has_many :messages
  has_many :users, through: :messages
  has_many :unique_users, -> { distinct }, through: :messages, source: :user
end

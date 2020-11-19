class Kid < ApplicationRecord
  belongs_to :classe
  has_many :users, through: :user_kids
  has_many :small_events
  has_one_attached :photo
end

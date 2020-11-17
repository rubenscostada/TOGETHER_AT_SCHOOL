class Classe < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :kids
end

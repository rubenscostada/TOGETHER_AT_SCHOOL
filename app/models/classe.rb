class Classe < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :kids
  has_many :pictures, dependent: :destroy
end

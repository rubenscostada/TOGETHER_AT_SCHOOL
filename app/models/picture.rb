class Picture < ApplicationRecord
  belongs_to :classe
  has_many_attached :photos
end

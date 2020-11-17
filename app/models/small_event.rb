class SmallEvent < ApplicationRecord
  belongs_to :kid
  has_many :attendance
end

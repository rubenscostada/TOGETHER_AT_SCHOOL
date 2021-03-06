class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :messages
  has_many :chatrooms, -> { distinct }, through: :messages
  has_many :classes, class_name: "::Classe"
  has_many :user_kids
  has_many :kids, through: :user_kids
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end

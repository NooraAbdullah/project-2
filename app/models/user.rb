class User < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :venues, through: :events
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

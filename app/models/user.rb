class User < ApplicationRecord
  has_many :pledges
  has_many :projects, through: :pledges
  validates :email, uniqueness: true
end

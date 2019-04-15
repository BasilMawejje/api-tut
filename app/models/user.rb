class User < ApplicationRecord
  has_many :purchases
  has_many :albums, through: :purchases

  validates_presence_of :name
end

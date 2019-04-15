class Album < ApplicationRecord
  has_many :purchases
  has_many :users, through: :purchases

  validates_presence_of :title
end

class Purchase < ApplicationRecord
  belongs_to :album
  belongs_to :user

  validates_presence_of :album_id, :user_id
end

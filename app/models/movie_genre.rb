class MovieGenre < ApplicationRecord
  validates :name, presence:true, allow_blank: false

  has_many :directors
  has_many :movies
end

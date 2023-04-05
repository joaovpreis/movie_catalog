class MovieGenre < ApplicationRecord
  validates :name, presence:true, allow_blank: false
end

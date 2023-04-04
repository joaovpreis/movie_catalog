class Director < ApplicationRecord
  validates :name, presence:true, allow_blank: false
  validates :nationality, presence:true,  allow_blank: false
  validates :birthdate, presence:true,  allow_blank: false
  validates :favorite_genre, presence:true,  allow_blank: false
end

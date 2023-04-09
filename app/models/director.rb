class Director < ApplicationRecord
  validates :name, presence:true, allow_blank: false
  validates :nationality, presence:true,  allow_blank: false
  validates :birthdate, presence:true,  allow_blank: false

  belongs_to :favorite_genre, class_name: 'MovieGenre'
  has_many :movies
end

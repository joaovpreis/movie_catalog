class Movie < ApplicationRecord
  enum status: { to_be_released: 0, released: 1 }

  belongs_to :director
  belongs_to :movie_genre
end

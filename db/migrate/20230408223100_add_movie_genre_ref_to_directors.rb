class AddMovieGenreRefToDirectors < ActiveRecord::Migration[7.0]
  def change
    add_reference :directors, :favorite_genre, null: false, foreign_key: {to_table: :movie_genres}
  end
end

class AddRegisterStatusToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :register_status, :integer, default: 0
  end
end

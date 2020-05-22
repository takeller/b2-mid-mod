class RemoveMoviesFromStudios < ActiveRecord::Migration[5.1]
  def change
    remove_column :studios, :movie_id
  end
end

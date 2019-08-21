class AddCoordinatesToArenas < ActiveRecord::Migration[5.2]
  def change
    add_column :arenas, :latitude, :float
    add_column :arenas, :longitude, :float
  end
end

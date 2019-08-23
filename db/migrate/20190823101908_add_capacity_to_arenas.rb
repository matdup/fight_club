class AddCapacityToArenas < ActiveRecord::Migration[5.2]
  def change
    add_column :arenas, :capacity, :integer
  end
end

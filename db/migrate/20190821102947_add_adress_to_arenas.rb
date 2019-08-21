class AddAdressToArenas < ActiveRecord::Migration[5.2]
  def change
    add_column :arenas, :address, :string
  end
end

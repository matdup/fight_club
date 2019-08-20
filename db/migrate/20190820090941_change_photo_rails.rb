class ChangePhotoRails < ActiveRecord::Migration[5.2]
  def change
    remove_column :arenas, :photorails
    add_column :arenas, :photo, :string
  end
end

class CreateArenas < ActiveRecord::Migration[5.2]
  def change
    create_table :arenas do |t|
      t.string :title
      t.string :description
      t.string :photorails
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

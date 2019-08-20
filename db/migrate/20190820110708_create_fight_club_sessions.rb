class CreateFightClubSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :arena, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :start_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end

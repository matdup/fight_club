class AddInfosToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :status, :string
    add_column :bookings, :price, :integer
  end
end

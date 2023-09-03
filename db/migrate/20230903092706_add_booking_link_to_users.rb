class AddBookingLinkToUsers < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :booking_link, unique: true
  end
end

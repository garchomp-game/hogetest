class CreateFavoriteRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_rooms do |t|
      t.integer :borad_id
      t.integer :user_id
      t.integer :delete_flag

      t.timestamps
    end
  end
end

class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :character_id
      t.string :message_user_id
      t.string :search_id

      t.timestamps
    end
  end
end

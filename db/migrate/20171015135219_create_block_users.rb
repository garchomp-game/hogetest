class CreateBlockUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :block_users do |t|
      t.integer :user_id
      t.integer :block_user_id

      t.timestamps
    end
  end
end

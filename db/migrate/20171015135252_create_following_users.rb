class CreateFollowingUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :following_users do |t|
      t.integer :user_id
      t.integer :follow_user_id

      t.timestamps
    end
  end
end

class CreateUserHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :user_histories do |t|
      t.integer :borad_id
      t.integer :user_id

      t.timestamps
    end
  end
end

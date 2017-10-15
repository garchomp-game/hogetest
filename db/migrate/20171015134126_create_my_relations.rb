class CreateMyRelations < ActiveRecord::Migration[5.1]
  def change
    create_table :my_relations do |t|
      t.string :user_id
      t.string :frend_id
      t.text :frend_description
      t.integer :delete_flag

      t.timestamps
    end
  end
end

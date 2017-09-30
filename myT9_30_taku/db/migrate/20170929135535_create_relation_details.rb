class CreateRelationDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :relation_details do |t|
      t.string :user_name
      t.string :frend_name
      t.string :frend_image
      t.string :frend_comment

      t.timestamps
    end
  end
end

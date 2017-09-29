class CreateFrendRelations < ActiveRecord::Migration[5.1]
  def change
    create_table :frend_relations do |t|
      t.string :name
      t.string :header_image
      t.string :frend_data

      t.timestamps
    end
  end
end

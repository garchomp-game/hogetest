class CreateRelationFrends < ActiveRecord::Migration[5.1]
  def change
    create_table :relation_frends do |t|
      t.string :name
      t.string :header_image
      t.string :frend_date

      t.timestamps
    end
  end
end

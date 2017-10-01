class RelationDetailAddId < ActiveRecord::Migration[5.1]
  def change
    add_column :relation_details, :frend_id, :integer
  end
end

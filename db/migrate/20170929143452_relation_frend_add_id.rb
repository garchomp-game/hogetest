class RelationFrendAddId < ActiveRecord::Migration[5.1]
  def change
    add_column :relation_frends, :user_id, :integer
  end
end

class AddId < ActiveRecord::Migration[5.1]
  def change
    add_column :relation_details, :user_id, :integer
  end
end

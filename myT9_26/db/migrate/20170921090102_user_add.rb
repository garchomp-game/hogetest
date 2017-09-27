class UserAdd < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :sex, :integer #性別
    add_column :users, :original_work, :string #原作
    add_column :users, :race, :string　#種族
    add_column :users, :height, :interger #身長
    add_column :users, :width, :interger #体重
    add_column :users, :street_address, :string
    add_column :users, :twitter, :string
    add_column :users, :facebook, :string
    add_column :users, :link_icon, :interger
  end
end

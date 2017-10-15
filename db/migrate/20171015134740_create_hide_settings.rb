class CreateHideSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :hide_settings do |t|
      t.integer :r_18_content
      t.integer :r_18g_content

      t.timestamps
    end
  end
end

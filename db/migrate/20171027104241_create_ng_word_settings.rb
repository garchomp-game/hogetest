class CreateNgWordSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :ng_word_settings do |t|
      t.integer :user_id
      t.text :ng_word

      t.timestamps
    end
  end
end

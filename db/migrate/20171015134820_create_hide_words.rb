class CreateHideWords < ActiveRecord::Migration[5.1]
  def change
    create_table :hide_words do |t|
      t.integer :user_id
      t.string :hide_word

      t.timestamps
    end
  end
end

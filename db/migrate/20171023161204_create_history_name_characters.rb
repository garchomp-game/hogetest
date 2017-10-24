class CreateHistoryNameCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :history_name_characters do |t|
      t.text :time_series
      t.text :event

      t.timestamps
    end
  end
end

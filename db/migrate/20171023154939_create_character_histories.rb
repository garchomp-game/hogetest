class CreateCharacterHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :character_histories do |t|
      t.text :time_series
      t.text :event

      t.timestamps
    end
  end
end

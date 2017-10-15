class CreateMycharacterCreates < ActiveRecord::Migration[5.1]
  def change
    create_table :mycharacter_creates do |t|
      t.string :image
      t.string :name
      t.integer :sex
      t.date :birthday
      t.string :different_birthday
      t.string :height
      t.string :width
      t.integer :r_18_setting
      t.string :original_work
      t.string :race
      t.string :twitter
      t.string :homepage

      t.timestamps
    end
  end
end

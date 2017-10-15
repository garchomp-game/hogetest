class CreateMyrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :myrooms do |t|
      t.string :room_title
      t.string :room_stage
      t.integer :room_lock
      t.string :room_setting
      t.string :room_description
      t.integer :room_activ
      t.string :room_report

      t.timestamps
    end
  end
end

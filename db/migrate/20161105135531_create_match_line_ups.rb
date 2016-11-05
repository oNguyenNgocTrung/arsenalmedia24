class CreateMatchLineUps < ActiveRecord::Migration[5.0]
  def change
    create_table :match_line_ups do |t|
      t.references :match
      t.references :player
      t.integer :position
      t.integer :category
      t.integer :time_in
      t.integer :time_out
      t.string :highlight_img

      t.timestamps
    end
  end
end

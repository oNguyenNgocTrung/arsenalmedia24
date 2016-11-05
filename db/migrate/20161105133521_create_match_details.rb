class CreateMatchDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :match_details do |t|
      t.references :match
      t.string :min
      t.integer :category
      t.references :player
      t.references :team

      t.timestamps
    end
  end
end

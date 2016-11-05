class CreateManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :managers do |t|
      t.string :name
      t.text :description
      t.references :country, index: true
      t.string :full_name
      t.datetime :date_of_birth
      t.string :place_of_birth
      t.float :height
      t.string :avatar
      t.string :wiki_url
      t.string :twitter_id
      t.string :facbook_id
      t.string :instargram_id

      t.timestamps
    end
  end
end

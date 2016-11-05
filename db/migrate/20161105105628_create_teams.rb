class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :full_name
      t.string :nickname
      t.string :founded
      t.string :owner
      t.references :stadium, index: true
      t.references :manager, index: true
      t.string :league
      t.string :website
      t.string :logo

      t.timestamps
    end
  end
end

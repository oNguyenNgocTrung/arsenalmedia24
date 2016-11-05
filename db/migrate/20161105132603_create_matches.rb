class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.references :completition
      t.references :season
      t.datetime :date
      t.references :stadium
      t.string :referee
      t.string :highlight_img
      t.integer :home_team_id
      t.integer :home_team_goal
      t.integer :guest_team_id
      t.integer :guest_team_goal

      t.timestamps
    end
  end
end

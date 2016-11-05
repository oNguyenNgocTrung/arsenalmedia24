class CreateMatchStatistics < ActiveRecord::Migration[5.0]
  def change
    create_table :match_statistics do |t|
      t.references :match, index: true
      t.integer :home_shots_on_target
      t.integer :guest_shots_on_target
      t.integer :home_shots_off_target
      t.integer :guest_shots_off_target
      t.integer :home_possession
      t.integer :guest_possession
      t.integer :home_corners
      t.integer :guest_corners
      t.integer :home_offsides
      t.integer :guest_offsides
      t.integer :home_fouls
      t.integer :guest_fouls
      t.integer :home_yellow_cards
      t.integer :guest_yellow_cards
      t.integer :home_red_cards
      t.integer :guest_red_cards
      t.integer :home_goal_kicks
      t.integer :guest_goal_kicks
      t.integer :home_treatments
      t.integer :guest_treatments

      t.timestamps
    end
  end
end

class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.references :video_category
      t.references :match
      t.references :player
      t.string :description
      t.string :facebook_url
      t.string :vidme_url
      t.string :youtube_url
      t.string :dailymotion_url
      t.string :other_url

      t.timestamps
    end
  end
end

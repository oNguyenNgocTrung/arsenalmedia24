class CreateMatchCommentaries < ActiveRecord::Migration[5.0]
  def change
    create_table :match_commentaries do |t|
      t.references :match
      t.integer :min
      t.string :content
      t.references :video

      t.timestamps
    end
  end
end

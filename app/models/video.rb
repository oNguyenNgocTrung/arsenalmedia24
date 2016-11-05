class Video < ApplicationRecord
  belongs_to :video_category
  belongs_to :match
  belongs_to :player
end

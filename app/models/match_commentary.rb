class MatchCommentary < ApplicationRecord
  belongs_to :match
  belongs_to :video
end

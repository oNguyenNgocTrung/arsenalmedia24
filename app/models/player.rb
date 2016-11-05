class Player < ApplicationRecord
  belongs_to :country
  belongs_to :team

  has_many :videos
  has_many :match_details
  has_many :match_line_ups
end

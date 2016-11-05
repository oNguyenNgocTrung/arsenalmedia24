class Match < ApplicationRecord
  belongs_to :completition
  belongs_to :season
  belongs_to :stadium

  has_many :match_commentaties
  has_many :match_details
  has_many :match_line_ups

  has_one :match_statistic
end

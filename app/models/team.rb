class Team < ApplicationRecord
  belongs_to :manager
  belongs_to :stadium

  has_many :players
end

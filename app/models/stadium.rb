class Stadium < ApplicationRecord
  has_one :team

  has_many :match
end

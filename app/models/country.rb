class Country < ApplicationRecord
  has_many :players
  has_many :managers
end

class Country < ApplicationRecord
  has_many :players
  has_many :managers

  validates :name, presence: true, uniqueness: true
end

class Completition < ApplicationRecord
  has_many :matches

  validates :name, presence: true, uniqueness: true
end

class Stadium < ApplicationRecord
  has_one :team
  validates :name, presence: true
  validates :capacity, presence: true, numericality: true
  validates :built, presence: true, numericality: true
end

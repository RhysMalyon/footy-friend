class Stadium < ApplicationRecord
  belongs_to :team
  validates :name, presence: true
  validates :capacity, presence: true, numericality: true
  validates :built, presence: true, numericality: true
end

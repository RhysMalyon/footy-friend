class Team < ApplicationRecord
  belongs_to :league
  has_one_attached :photo
  belongs_to :stadium
  has_many :players
  validates :name, presence: true, uniqueness: true, length: { minimum: 6 }
  validates :founded, presence: true, numericality: true
  validates :city, presence: true
end

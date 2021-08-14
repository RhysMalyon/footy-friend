class Team < ApplicationRecord
  belongs_to :league
  has_one_attached :photo
  has_one :stadium
  has_one :squad
  has_many :players, through: :squad
  validates :name, presence: true, uniqueness: true, length: { minimum: 6 }
  validates :founded, presence: true, numericality: true
  validates :city, presence: true
  validates :stadium_id, uniqueness: true
end

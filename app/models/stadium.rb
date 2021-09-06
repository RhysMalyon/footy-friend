class Stadium < ApplicationRecord
  
  belongs_to :user
  has_one :team
  has_one_attached :photo
  validates :name, presence: true
  validates :capacity, presence: true, numericality: true
  validates :built, presence: true, numericality: true
end

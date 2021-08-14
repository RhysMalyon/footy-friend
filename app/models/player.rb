class Player < ApplicationRecord
  POSITION = %w[GK CB LB RB CDM CM CAM RW LW RM LM CF ST].freeze

  belongs_to :team
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true, numericality: true
  validates :nationality, presence: true
  validates :position, presence: true, inclusion: { in: POSITION }
end

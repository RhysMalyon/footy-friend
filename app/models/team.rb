class Team < ApplicationRecord
  belongs_to :league
  belongs_to :squad
  belongs_to :stadium
  has_many :players, through: :squad
end

class Squad < ApplicationRecord
  has_many :players
  belongs_to :team
  validates :players, presence: true, uniqueness: { scope: :team }
end

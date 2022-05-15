class Signing < ApplicationRecord
  belongs_to :team
  belongs_to :player
  validates :player, presence: true,  uniqueness: { scope: :team }
  POSITIONS = ['Goalkeeper', 'Right Back', 'Left Back', 'Center Back', 'Sweeper', 'Left Wing', 'Right Wing', 'Defensive Midfield', 'Centre Midfield', 'Attacking Midfield', 'Left Midfield', 'Right Midfield', 'Stiker' ]
  validates :position, presence: true
end
